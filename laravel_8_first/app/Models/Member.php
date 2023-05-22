<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    
    use HasFactory;
    protected $primaryKey = "member_id";
    function getGroup(){
        return $this->hasOne(Group::class,'group_id');
    }
    function getManyGroups(){
        return $this->hasMany(Group::class,'group_id','group_id');
    }
}
