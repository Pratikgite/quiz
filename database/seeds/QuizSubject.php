<?php

use Illuminate\Database\Seeder;

class QuizSubject extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table("subjects")->insert([
		 	["subject" => "PHP", "created_at" => date("Y-m-d H:i:s"), "updated_at" => date("Y-m-d H:i:s")],
		 	["subject" => "HTML", "created_at" => date("Y-m-d H:i:s"), "updated_at" => date("Y-m-d H:i:s")],
		]);
    }
}
