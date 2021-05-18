<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Builder;

class NgoManagement extends Model
{
	// public $table = 'contactus';
	public $fillable = ["name_of_the_NGO","date_of_registration","registration_certificate_number","12A_certificate_number","location_of_registration","legal_status","PAN","TAN","FCRA_number","DARPAN_UNIQUE_ID" ,"state_of_operation","district_of_operation","website","are_you_in_social_media" ,"registered_address","correspondence_address" ,"income_tax_exemption","thematic_sector_of_work","chief_functionary_name","chief_functionary_email","chief_functionary_number","contact_person_name","contact_person_email" ,"contact_person_number","local_and_national_network","financia_year","gross_amount","sponsored_by","status"];

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
