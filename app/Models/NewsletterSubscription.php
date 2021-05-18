<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class NewsletterSubscription extends Model
{
	// public $table = 'contactus';
	public $fillable = ['name','email'];

	public function __construct(array $attributes = [])
    {
        parent::__construct($attributes);
        $this->perPage = request()->input('show') ?? 10;
    }
	public function scopeStatus(Builder $query)
    {
        return $query->where('status', 'A');//->select($this->fillable);
    }
}
