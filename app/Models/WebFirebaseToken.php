<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class WebFirebaseToken extends Model
{
	protected $dateFormat = 'U';
	public $fillable = ['updated_at','token'];

}
