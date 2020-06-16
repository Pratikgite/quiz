@extends('layout.app')

@section('content')

<div class="jumbotron text-center">
  	<h1>Select Subject</h1>
  	<ul class="list-group">
  		@if(!empty($subject))
  			@foreach($subject as $sub)
	  			<a href="{{ 'test/'.$sub->id }}"><li class="list-group-item">{{ $sub->subject }}</li></a>
	  		@endforeach
	  	@endif
	</ul>
</div>
@endsection
