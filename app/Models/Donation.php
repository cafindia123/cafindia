<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class Donation extends Model
{
	// public $table = 'contactus';
	public $fillable = ["name","email","mobile","organization","nationality" ,"givig_amount" ,"payment_mode","address","country" ,"state" ,"city" ,"pan_number" ,"status", "donor_type", "donation_amount", "payment_method"];

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
