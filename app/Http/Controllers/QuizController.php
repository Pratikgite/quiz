<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Model\question;
use App\Model\answer;
use App\Model\result;

class QuizController extends Controller
{
    public function index($id) {
    	$quest = question::with('relationship')->inRandomOrder()->where("subject_id", $id)->get();
    	$result = result::where("subject_id", $id)->get();
    	$ans_count = count($result);
    	$count = count($quest);
    	return view("test", compact("quest", "count", "ans_count"));
    }

    public function store(Request $request) {
        $que = $request->question_id;
        $sub = $request->subject_id;
        $ans = $request->answer;
        $data = count(result::where("subject_id", $sub)->where("question_id", $que)->get());
        if($data == 1){
            result::where('question_id', $que)->update(['subject_id'=> $sub, 'question_id' => $que, 'answer' => $ans]);
        }else{
            result::create($request->all());
        }
    }

    public function report($id) {
    	$quest = answer::with('reports')->where("subject_id", $id)->get();
    	$question_count = count(question::where("subject_id", $id)->get());
    	$attempt_que = count(result::where("subject_id", $id)->where("answer", "!=", "")->get());
    	foreach($quest as $val){
    		$correct_ans[] = $val->correct_answer;
    	}
    	$correct = count(result::where("subject_id", $id)->whereIn("answer", $correct_ans)->get());
    	$wrong = count(result::where("subject_id", $id)->whereNotIn("answer", $correct_ans)->get());
    	return view("report", compact("attempt_que", "question_count", "quest", "correct", "wrong"));
    }
}
