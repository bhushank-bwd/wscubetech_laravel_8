<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Customer extends Model
{
    use HasFactory;
    use SoftDeletes;
    protected $table = "customers";
    protected $primarykey = "id";

    public function setNameAttribute($value){ // mutator name => Name user_name => UserName
        $this->attributes['name'] = ucwords($value);
    }
    public function getCreatedAtAttribute($value){ // accessor
        return date('M-d-Y h:i A',strtotime($value));
    }
}
