<?php

namespace App\Validators;

class ReCaptcha
{
    public function validate($attribute, $value, $parameters, $validator)
    {

		$data =[
		    'secret' => env('GOOGLE_RECAPTCHA_SECRET'),
		    'response' => $value,
		];

		$verify = curl_init();
		curl_setopt($verify, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
		curl_setopt($verify, CURLOPT_POST, true);
		curl_setopt($verify, CURLOPT_POSTFIELDS, http_build_query($data));
		curl_setopt($verify, CURLOPT_SSL_VERIFYPEER, false);
		curl_setopt($verify, CURLOPT_RETURNTRANSFER, true);
		$response = curl_exec($verify);

		$body = json_decode((string)$response);

		return $body->success;
        
    }
}

