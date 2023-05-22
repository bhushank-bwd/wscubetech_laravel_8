<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Group extends Model
{
    protected $primarykey = "group_id";
    use HasFactory;
    function getManyMembers(){
        return $this->hasMany(Member::class,'group_id','group_id');
    }
}
