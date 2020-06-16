<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\subject;

class SubjectController extends Controller
{
    public function index() {
    	$subject = subject::all();
    	return view("home", compact("subject"));
    }
}
