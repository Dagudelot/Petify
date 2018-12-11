@extends('layouts.app')
@section('title', 'Post')

@section('content')
        <!-- Banner -->
        <div class="inner-page-banner">
          <div class="opacity">
            <h1>{{ $post->title }}</h1>
          </div> 
        </div> 
        <!-- /Banner -->

        <!-- Details -->
        <div class="blog-details blog-v3">
          <div class="container">
            <div class="wrapper">
              <div class="blog-main-post">
                <img src="{{ Voyager::image($post->image) }}" style="margin-top: 50px" alt="">
                <h6>María Zapata</h6>
                <h3>{{ $post->title }}</p> <br>
                <br>

                <p>{!! $post->body !!}</p>
                
              </div> <!-- /.blog-main-post -->
              <div class="tag-option clearfix">
                <ul class="float-left">
                  <li>Palabras clave:</li>
                  <li><a class="tran3s">{{ $post->meta_keywords }}</a></li>
                </ul>
                <ul class="float-right">
                  <li>Compartir:</li>
                  <li><a href="" class="tran3s"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                  <li><a href="" class="tran3s"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                  <li><a href="" class="tran3s"><i class="fa fa-google-plus" aria-hidden="true"></i></a></li>
                </ul>
              </div> <!-- /.tag-option -->
            </div> <!-- /.wrapper -->
          </div> <!-- /.container -->

          <div class="comentarios">
            <div class="container">
              <div class="wrapper">
                <div id="disqus_thread"></div>
                <script>
                (function() { // DON'T EDIT BELOW THIS LINE
                var d = document, s = d.createElement('script');
                s.src = 'https://pets-3.disqus.com/embed.js';
                s.setAttribute('data-timestamp', +new Date());
                (d.head || d.body).appendChild(s);
                })();
                </script>
<noscript>Please enable JavaScript to view the <a href="https://disqus.com/?ref_noscript">comments powered by Disqus.</a></noscript>
              </div> <!-- /.wrapper -->
            </div> <!-- /.container -->
          </div> <!-- /.comentarios -->
        </div> <!-- /.detalles-blog -->
@endsection