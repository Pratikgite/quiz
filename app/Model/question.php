<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class question extends Model
{
    protected $guarded = [];
    protected $table = 'questions';

    public function relationship(){
    	return $this->hasMany('App\Model\answer', 'question_id');
    }
}
