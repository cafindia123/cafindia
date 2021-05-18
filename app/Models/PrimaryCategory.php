<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Facades\Voyager;
use TCG\Voyager\Traits\Translatable;

class PrimaryCategory extends Model
{
    use Translatable;

    protected $translatable = ['slug', 'name'];

   // protected $table = 'categories';

    protected $fillable = ['slug', 'name'];

    public function primaryPages()
    {
        return $this->hasMany(PrimaryPage::class)
            ->published()
            ->orderBy('created_at', 'DESC');
    }

    public function parentId()
    {
        return $this->belongsTo(self::class);
    }
	
    public function primaryPage()
    {
        return $this->hasOne(PrimaryPage::class, "category_id")->published()->select("id","category_id","slug","title");
    }
	
	public function parent_items()
    {
        return $this->hasMany(self::class , 'parent_id')->orderBy('id', 'asc')->with('primaryPage');//->orderBy('order', 'asc');
            
    }
	
    public function children()
    {
        return $this->hasMany(self::class, 'parent_id')->with('primaryPage')
            ->with('children')->where('status', 'A');
    }
				
    public function category_parent()
    {
        return $this->belongsTo(self::class, "parent_id")->select("id","slug","name","image")->with("category_parent");
    }
    
    public function category_children_parent()
    {
        return $this->belongsTo(self::class, "parent_id")->with("category_parent");
    }
}
