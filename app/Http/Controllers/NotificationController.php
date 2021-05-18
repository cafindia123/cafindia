<?php
namespace App\Http\Controllers;

use TCG\Voyager\Http\Controllers\VoyagerBaseController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;

use TCG\Voyager\Events\BreadDataAdded;
use App\Models\{WebFirebaseToken};
class NotificationController extends VoyagerBaseController
{
       /**
     * POST BRE(A)D - Store data.
     *
     * @param \Illuminate\Http\Request $request
     *
     * @return \Illuminate\Http\RedirectResponse
     */ 
	public function store(Request $request)
    {
        $slug = $this->getSlug($request);

        $dataType = Voyager::model('DataType')->where('slug', '=', $slug)->first();

        // Check permission
        $this->authorize('add', app($dataType->model_name));

        // Validate fields with ajax
        $val = $this->validateBread($request->all(), $dataType->addRows)->validate();
        $data = $this->insertUpdateData($request, $slug, $dataType->addRows, new $dataType->model_name());

        event(new BreadDataAdded($dataType, $data));
		
		$sendNotification = $this->sendNotification($request);
		
        if (!$request->has('_tagging')) {
            if (auth()->user()->can('browse', $data)) {
                $redirect = redirect()->route("voyager.{$dataType->slug}.index");
            } else {
                $redirect = redirect()->back();
            }

            return $redirect->with([
                'message'    => __('voyager::generic.successfully_added_new')." {$dataType->getTranslatedAttribute('display_name_singular')}",
                'alert-type' => 'success',
            ]);
        } else {
            return response()->json(['success' => true, 'data' => $data]);
        }
    }
   
	protected function sendNotification(Request $request)
    {
        $firebaseToken = WebFirebaseToken::whereNotNull('token')->pluck('token')->all();
          
        $SERVER_API_KEY='AAAAsJMUJnk:APA91bFxLeR_vMxxdyYBz0fDOe7b5UZ6iC2CugwLMkHNqmmLQMxa7QoMdU9LjV7a3L7aEjhpXkRI25u7hA0H470CdljoQGvbc18OL5zhYt8Fo447To6vI1y9JB1SCbO2xt4JGFGVvMwQ';
  
        $data = [
            "registration_ids" => $firebaseToken,
            "notification" => [
                "title" => $request->title,
                "body" => $request->description,  
                "icon" => "https://cafindia.jaisalmercity.com/assets/image/caf-logo-orange.png",  
            ], "webpush"=>[
			  "fcm_options"=>[
				"link"=> "https://cafindia.jaisalmercity.com/for-companies"
				]
			],'fcm_options' => [
				'link' => 'https://cafindia.jaisalmercity.com/for-companies',
			],
        ];
        $dataString = json_encode($data);
    
        $headers = [
            'Authorization: key=' . $SERVER_API_KEY,
            'Content-Type: application/json',
        ];
    
        $ch = curl_init();
      
        curl_setopt($ch, CURLOPT_URL, 'https://fcm.googleapis.com/fcm/send');
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $dataString);
               
        $response = curl_exec($ch);
  
        return $response;
    }
	
		
}
