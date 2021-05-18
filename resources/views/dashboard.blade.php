<x-app-layout>
   <x-slot name="header">
   </x-slot>
   <div class="py-12">
   <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
      <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
         <div class="row m-3">
            <div class="col-md-12">
               <div class="panel panel-bordered">
                  <form role="form" class="form-edit-add" action="" method="GET" enctype="multipart/form-data">
                     <!-- CSRF TOKEN -->
					 @csrf
                     <div class="panel-body">
                        <div class="form-group  col-md-12 " >
                           <label class="control-label" for="program_name">Name</label>
                           <input  required  type="text" class="form-control" name="program_name"
                              placeholder="Program Name" value="">
                        </div>
                        <!-- GET THE DISPLAY OPTIONS -->
                        <div class="form-group  col-md-12 " >
                           <label class="control-label" for="program_location">Program Location</label>
                           <input  required  type="text" class="form-control" name="program_location"
                              placeholder="Program Location" value="">
                        </div>
                        <div class="form-group  col-md-12 " >
                           <label class="control-label" for="cause_name">Cause Name</label>
                           <input  required  type="text" class="form-control" name="cause_name"
                              placeholder="Cause Name" value="">
                        </div>
                        <div class="form-group  col-md-12 " >
                           <label class="control-label" for="donation_amount">Donation Amount</label>
                           <input  required  type="number" class="form-control" name="donation_amount"
                              placeholder="Donation Amount" value="">
                        </div>
                        <div class="form-group  col-md-12 " >
                           <label class="control-label" for="donation_date">Donation Date</label>
                           <input  required  type="date" class="form-control" name="donation_date"
                              placeholder="Donation Date" value="">
                        </div>
                     </div>
                     <!-- panel-body -->
                     <div class="panel-footer">
                        <button type="submit" class="btn btn-primary save">Save</button>
                     </div>
                  </form>
               </div>
            </div>
         </div>
      </div>
   </div>
</x-app-layout>