@extends('layout.app')

@section('content')
    <style type="text/css">
       * {
         margin: 0px;
         padding: 0px;
         font: 16px 'Source Sans Pro', sans-serif;
         border: none;
         box-sizing: border-box;
       }
       html, body {
          background: #2E706C;btn btn-primary 
       }
       #quiz h1 {
         color: #FAFAFA;
         font-weight: 600;
         font-size: 36px;
         text-transform: uppercase;
         text-align: left;
         line-height: 44px;
       }
       #clock {
         color: #FAFAFA;
         font-size: 18px;
         line-height: 44px;
       }
    </style>
    
    <div class="container">
       <div id="quiz">
          <div class="row">
            <div class="col-md-6">
              <h1 id="quiz-name">My Quiz</h1>
            </div>
            <div class="col-md-6">
              <span id="clock" class="list-unstyled float-right text-white"></span>
            </div>
          </div>
  				<div class="card">
              <div class="card-header">
                <h4 class="float-left mb-0">Question <span class="count"></span></h4>
                <div class="rt-part">
                  <p class="ques-no mb-0 float-right"><span class="count"></span>/<?php echo $count; ?></p>
                </div>
              </div>
                  
              @if(!empty($quest))
          		  @foreach($quest as $index => $data)
          		    <?php $n = ++$index; ?>
              		<fieldset id="showForm{{$n}}" style="display: none">
              			<form id="saveTest">
              				@csrf
  		                <div class="card-body tab" <?php echo ($n==$count) ? 'id="end"' : 'id="content-'.$n.'"'; ?>>
  		                	<input type="hidden" name="question_id<?php echo $n; ?>" value="{{$data->id}}">
  		                	<input type="hidden" name="sub_id<?php echo $n; ?>" value="{{$data->subject_id}}">
  		                    <h5 class="mb-4">{{ $data->question }}</h5>
  			                    @foreach($data->relationship as $val)
  			                      <div class="form-group mb-0 pb-2">
                                <label>
    			                         <input type="radio" value="{{ $val->options }}" name="answer<?php echo $n; ?>">  {{ $val->options }}
                                </label>
  			                      </div>
  			                    @endforeach
  		                    <div class="btns-wrapper float-right">
  		                      <span style="@if($n==1) display: none @endif" class="btn btn-primary prev mr-3">Prev</span>
  		                      <button class="btn btn-primary next submit<?php echo $n; ?>">Next</button>
  		                      <button style="display: none" class="btn btn-success finish submit<?php echo $n; ?>" id="finishtest<?php echo $n; ?>">Finish</button>
  		                    </div>
  		                </div>
  		            	</form>
  		            </fieldset>
      					@endforeach
      				@endif
          </div>
       </div>
    </div>

    <div id="myModal" class="modal hide fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-body text-center" style="color:#000">
            <h3>Your test has been completed</h3>
            <p>See Your Result <a href="/report/{{ request()->segment(2) }}">Click Here</a></p>
          </div>
        </div>
      </div>
    </div>

<script>
	$(document).ready(function(e) {
		var x=1;

		$(".count").text(x);
    $("#showForm"+x).css("display", "block");
		$('body').on('click', '.next', function() { 
			x++;
			$(".count").text(x);
      $("#showForm"+x).css("display", "block");
      $(".card-body").first().removeClass("d-block");
    });

		$('body').on('click', '.prev', function() { 
			x--;
			$(".count").text(x);
      $("#showForm"+x).css("display", "block");
    });

		var counter = 1;
		$('body').on('click', '.next', function() {
			$('.card-body').hide();
			counter++;
			$('#content-'+counter+'').show();
			if(counter > 1) {
        $('.prev').show();
      };
			if(counter == <?php echo $count; ?>) {
				$(".finish").show();
				$('#end').show();
				$(".next").hide();
			};
		});
		
		$('body').on('click', '.prev', function() {
			counter--;
			$('.card-body').hide();
			$(".finish").hide();
			$(".next").show();
			var id = counter;   
			$('#content-'+id).show();
		    if(counter<2){
		      $('.prev').hide();
		    }
		});
  });

  var seconds = "{{ $count }}"*60;
  console.log(seconds);
  var timeFromDataBase = seconds; //time in seconds
  $('#clock').countdown(new Date().getTime() + (timeFromDataBase * 1000))
    .on('update.countdown', function(event) {
      var format;
      format =  '%H:%M:%S';

      $(this).html(event.strftime(format));
    })
    .on('finish.countdown', function(event) {
      alert("This test has been expired!");
  });


	<?php
		for($n=1; $n<=$count; $n++){
      if($ans_count >= $count){
  ?>
    $(window).on('load',function(){
      $('#myModal').modal({backdrop: 'static', keyboard: false});
    });
  <?php
      }else{
	?>
    $('.submit<?php echo $n; ?>').on('click', function (e) 
  	{
      e.preventDefault();
      var length = $("fieldset").length;
      var id = "<?php echo $n; ?>";
      var token = "{{ csrf_token() }}";
      var _token = $('input[name="_token"]').val();
      var question_id = $("input[name=question_id<?php echo $n; ?>]").val();
      var subject_id = $("input[name=sub_id<?php echo $n; ?>]").val();
      var ans = $("input[name=answer<?php echo $n; ?>]:checked").val();
      if(ans === undefined){
        var answer = "";
      } else {
        var answer = ans;
      }
      $.ajax({
        type: "post",
        url: "/create",
        data: { _token:_token, question_id:question_id, answer:answer, subject_id:subject_id },
        success: function(data) {
          if(length == id){
            $('#myModal').modal({backdrop: 'static', keyboard: false});
          }
        }
     }); 
  	});
	<?php } } ?>
</script>
@endsection