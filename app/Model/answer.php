<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class answer extends Model
{
    protected $guarded = [];
    protected $table = 'answers';

    public function reports(){
    	return $this->hasMany('App\Model\result', 'question_id');
    }
}
