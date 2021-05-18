<?php

namespace App\Models;

use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Translatable;

class Category extends \TCG\Voyager\Models\Category
{
    use Translatable;

    protected $translatable = ['slug', 'name'];

    protected $table = 'categories';

    protected $fillable = ['slug', 'name'];

    public function posts()
    {
        return $this->hasMany(Post::class)
            ->published()
            ->orderBy('created_at', 'DESC');
    }

    public function parentId()
    {
        return $this->belongsTo(self::class);
    }
	
    public function post()
    {
        return $this->hasOne(Post::class, "category_id")->published()->select("id","category_id","slug","title");
    }
	
	public function parent_items()
    {
        return $this->hasMany(self::class , 'parent_id')->where('status', 'A')->with('post')->orderBy('order', 'asc');
            
    }
	
    public function children()
    {
        return $this->hasMany(self::class, 'parent_id')->where('status', 'A')->with('post')
            ->with('children');
    }	
	
    public function category_parent()
    {
        return $this->belongsTo(self::class, "parent_id")->where('status', 'A')->select("id","slug","name","image")->with("category_parent");
    }
    public function category_children_parent()
    {
        return $this->belongsTo(self::class, "parent_id")->where('status', 'A')->with("category_parent");
    }
}
