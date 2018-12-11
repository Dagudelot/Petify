@extends('layouts.app')
@section('title', 'Blog')

@section('content')

        <!-- Banner -->
        <div class="inner-page-banner">
          <div class="opacity">
            <h1>Mascotas  =  familia</h1>
          </div> 
        </div> 
        <!-- /Banner -->

        <div style="padding-top: 100px;">
          
        </div>

        <!-- Blog -->
        <div class="our-blog">
          <div class="row">
            
            @foreach($posts as $post)
              <div class="col-lg-3 col-md-4 col-xs-6">

                <div class="single-blog">
                  <div class="image"><img src="{{ Voyager::image($post->image) }}" ></div>
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

          <div class="pagination">
            {{ $posts->render() }}

            <!--<a href="#">&laquo;</a>
            <a class="active" href="#">1</a>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">6</a>
            <a href="#">&raquo;</a>-->
          </div>
        </div>
        <!-- /Blog -->

        <div style="padding-bottom: 10px;"></div>
      </div> <!-- /.html-top-content -->


   </div>
@endsection