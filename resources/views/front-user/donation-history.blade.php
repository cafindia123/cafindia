<x-app-layout>
   <x-slot name="header">
   </x-slot>
   <div class="py-3">
   <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
      <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg">
         <div class="row m-3">
            <div class="col-md-12">
               <div class="panel panel-bordered">
                  <div style="overflow:hidden" class="col-12 col-sm-12 col-md-10 col-lg-10">
                     <div name="user-dashboard-panel">
                        <div style="padding-top:1rem;padding-bottom:1rem" class="row">
                           <div class="jsx-949245109 user-dashboard-box">
                              <div class="row">
                                 <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                    <div style="padding:1rem" class="jsx-949245109">
                                       <p style="font-size:22px;font-weight:bold" class="jsx-949245109">You are currently not donating to any program.</p>
                                       <p class="jsx-949245109">GiveIndia is India's largest and most trusted donations platform. Start a small monthly donation today and create a lasting impact on the lives of the poor.</p>
                                       <a style="background-color:#d24508;color:#ffffff" href="{{ route('exploreAllPrograms') }}" class="btn btn btn-#d24508">Explore all programs</a>
                                    </div>
                                 </div>
                                 <div class="col-12 col-sm-12 col-md-6 col-lg-6"><img src="https://cdn.givind.org/static/icons/user-dashboard/hands-with-hearts.svg" alt="meet the one" class="jsx-949245109 dashboard-explore-programs-image"></div>
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
  </div>
</x-app-layout>