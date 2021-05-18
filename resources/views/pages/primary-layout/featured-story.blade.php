<div class="row">
    <div class="@if($dataRow->alignment_type == "B" && $dataRow->join_us_block) col-md-6 @else col-md-12 @endif pb-3" style="overflow:hidden;" >
        <div class="story clearfix">
            <div class="stheader">Featured Story</div>
            <div class="story-content">
                @if ($dataRow->alignment_type == "B")
                    @if($storyOfHope->image)
                        <div  class="float-left" style="height:100%; width: 35%;">
                            <div class="topSectionImage" style="background-image: url({{ Voyager::image( $storyOfHope->image )}}); width:100%; height:100%; ">
                                {{-- <img title="{{$storyOfHope->title}}" alt="{{$storyOfHope->title}}" src="{{ Voyager::image( $storyOfHope->image )}}"> --}}
                            </div>
                        </div>
                    @endif
                    <div class="float-right" style="height:100%; width: 65%;">
                        <h5 class="px-3 pt-3 story_of_hope_title">{{$storyOfHope->title}}</h5>
                        <div class="story_of_hope_description">{!! $storyOfHope->description !!}</div>
                        
                        @if($storyOfHope->link)
                            <a class="vs_link style-normal color-turquoise my-3" href="{{$storyOfHope->link}}"> <i class="fa fa-angle-double-right" aria-hidden="true"></i> Read More</a>
                        @else
                            <a class="vs_link style-normal color-turquoise my-3" href="{{ '/content-details/stories-of-hope/'.$storyOfHope->slug }}"> <i class="fa fa-angle-double-right" aria-hidden="true"></i> Read More</a>
                        @endif
                    </div>
                @else
                    @if($storyOfHope->image)
                        <div class="topSection topSectionImage" style="background-image: url({{ Voyager::image( $storyOfHope->image )}});">
                            {{-- <img title="{{$storyOfHope->title}}" alt="{{$storyOfHope->title}}" src="{{ Voyager::image( $storyOfHope->image )}}"> --}}
                        </div>
                    @endif
                    <h5 class="px-3 pt-3 story_of_hope_title">{{$storyOfHope->title}}</h5>
                    <div class="story_of_hope_description">{!! $storyOfHope->description !!}</div>
                    
                    @if($storyOfHope->link)
                        <a class="vs_link style-normal color-turquoise my-3" href="{{$storyOfHope->link}}"> <i class="fa fa-angle-double-right" aria-hidden="true"></i> Read More</a>
                    @else
                        <a class="vs_link style-normal color-turquoise my-3" href="{{ '/content-details/stories-of-hope/'.$storyOfHope->slug }}"> <i class="fa fa-angle-double-right" aria-hidden="true"></i> Read More</a>
                    @endif
                @endif
            </div>
        </div>
    </div>
    @if ($dataRow->join_us_block)
        <div class="@if($dataRow->alignment_type == "B") col-md-6 @else col-md-12 mt-3 @endif">
            <div class="obox h-100 mb-0">
                <div class="obx-header">{{$joinUsBlock->title}}</div>
                <div class="obox-body text-justify">
                    <div class="story_of_hope_description pr-3">{!! $joinUsBlock->description !!}</div>
                </div>
                <div class="obox-body text-center">
                    @if($joinUsBlock->link)
                        <a class="@if($joinUsBlock->link_type == 'BUTTON') btn obo-btn-blue m-auto @else vs_link @endif" href="{{$joinUsBlock->link}}">@if($joinUsBlock->link_type != 'BUTTON')<i class="fa fa-angle-double-right"></i>@endif {{$joinUsBlock->link_text}}</a>
                    @else
                        <a class="@if($joinUsBlock->link_type == 'BUTTON') btn obo-btn-blue m-auto @else vs_link @endif" href="{{ '/content-details/stories-of-hope/'.$storyOfHope->slug }}">@if($joinUsBlock->link_type != 'BUTTON')<i class="fa fa-angle-double-right"></i>@endif {{$joinUsBlock->link_text}}</a>
                    @endif
                </div>
            </div>
        </div>
    @endif
</div>
<style>
    .story_of_hope_description{ 
        overflow: hidden;
        text-overflow: ellipsis;
        height: 90px !important; 
        line-height: 18px;
        font-size: 13px;
        /* display: -webkit-box; */
        margin-bottom: 15px;
        /* -webkit-line-clamp: 5; number of lines to show */
        /* -webkit-box-orient: vertical; */
    }
    .story_of_hope_description p {
        padding-left: 15px !important ;
    }
    .story_of_hope_title{
        font-weight: bolder;
        font-size: 15px;
        color: #343434;
    }
    .obx-header{
        padding-left: 20px; 
        padding-right: 100px;
    }
</style>