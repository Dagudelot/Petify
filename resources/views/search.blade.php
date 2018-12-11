@extends('layouts.app')
@section('title', 'Resultado de búsqueda')

@section('content')

        <!-- Banner -->
        <div class="inner-page-banner">
          <div class="opacity">
            <h1>Resultado de busqueda</h1>
          </div> 
        </div> 
        <!-- /Banner -->	

	    <div style="padding-top: 100px;">
          
        </div>	

	@if(isset($details))

	<div class="row">
	<div class="container">

	<div class="alert alert-success" role="alert">¡Resultados encontrados!</div>

	@foreach($details as $post)
	<div class="col-lg-3 col-md-4 col-xs-6">
        <div class="single-blog">
            <div class="image"><img src="{{ Voyager::image($post->image) }}" alt=""></div>
                <div class="text">
                  <h6>{{ $post->author->name }}!</h6>
                  <h5><a href="details/{{ $post->slug }}" class="tran3s">{{ $post->title }}</a></h5>
                  <p>{{ $post->excerpt }}</p>
                  <p>{{ $post->category->name }}</p>
            	</div>
        	</div> <!-- /.single-blog -->
	</div>
	@endforeach

		</div>

	</div>

	@elseif(isset($message))
	
	<div class="container">
		
		<div class="alert alert-warning alert-dismissible" role="alert">
  			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  			<strong>Lo sentimos!</strong> no se encontraron resultados.
		</div>

	</div>

	@endif

	<div style="padding-bottom: 10px;"></div>

@endsection