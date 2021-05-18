<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\HasOne;
use Illuminate\Support\Facades\Auth;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;

class PrimaryPage extends Model
{
    use Translatable;
    use Resizable;

    protected $translatable = ['title', 'seo_title', 'excerpt', 'body', 'slug', 'meta_description', 'meta_keywords'];

    const PUBLISHED = 'PUBLISHED';

    protected $guarded = [];

    public function save(array $options = [])
    {
        // If no author has been assigned, assign the current user's id as the author of the post
        if (!$this->author_id && Auth::user()) {
            $this->author_id = Auth::user()->getKey();
        }

        return parent::save();
    }

    public function authorId()
    {
        return $this->belongsTo(Voyager::modelClass('User'), 'author_id', 'id');
    }

    /**
     * Scope a query to only published scopes.
     *
     * @param \Illuminate\Database\Eloquent\Builder $query
     *
     * @return \Illuminate\Database\Eloquent\Builder
     */
    public function scopePublished(Builder $query)
    {
        return $query->where('status', '=', static::PUBLISHED);
    }

    /**
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function category()
    {
        return $this->belongsTo(PrimaryCategory::class,"category_id")->with("category_children_parent");
    }
		
	public function sub_pages()
    {
        return $this->hasMany(PrimarySubPage::class , 'primary_page_id')->orderBy('id', 'asc');
    }
	public function section_children()
    {
        return $this->hasMany(PrimaryPageSection::class, 'primary_page_id')->published()->with("card_children")->orderBy('order', 'asc');
    }
	public function featured_sections()
    {
        return $this->hasMany(FeaturedStory::class, 'primary_page_id')->published()->orderBy('order', 'asc');
    }
	/************************
	
	public function parent_items()
    {
        return $this->hasMany(self::class , 'parent_id')->with('primaryPage')->orderBy('order', 'asc');
            
    }
	
    public function children()
    {
        return $this->hasMany(self::class, 'parent_id')->with('primaryPage')
            ->with('children');
    }   */
	
    /* public function getBodyAttribute($value) {
        //$output = preg_replace('/(<[^>]+) style=".*?"/i', '$1', $value);
        $output = preg_replace('/font-family.+?;/', "", $value);
        $output = preg_replace('/font-size.+?;/', "", $output);
        $output = preg_replace('/line-height.+?;/', "", $output);
        $output = preg_replace("/<p[^>]*>[\s|&nbsp;]*<\/p>/", '', $output);
        return $output;
    } */
	
	public function featured_storys()
    {
		return $this->belongsToMany(Blog::class, 'primary_page_featured_stories', null, null,null,"id")->get();
    }
	
	public function primary_page_with_blog()
    {
		return $this->belongsToMany(Blog::class, 'primary_page_blogs', null, null,null,"id")->get();
    }
}
