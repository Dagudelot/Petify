@extends('layouts.app')
@section('title', 'Show')

@section('content')
        <!-- Banner -->
        <div class="inner-page-banner">
          <div class="opacity">
            <h1>Cuidados para tu perro en el parque</h1>
          </div> 
        </div> 
        <!-- /Banner -->

        <!-- Details -->
        <div class="blog-details blog-v3">
          <div class="container">
            <div class="wrapper">
              <div class="blog-main-post">
                <img src="{{ asset('images/blog/9.jpg') }}" alt="">
                <h6>María Zapata</h6>
                <h3>Ipsum dolor sit amet, consectetur adipisicing elit.</h3>
                <p>Dolor sit amet, consectetur adipisicing elit. Rem, sequi. Earum, iure ab deserunt quam debitis maxime, error assumenda officiis cum sit facilis omnis totam.</p> <br>

                <div class="center" style="justify-content: center;">

                  <img src="images/blog/parque.jpg" width="70%">                
                </div>

                <br>

                <p>Consectetur adipisicing elit. Nemo recusandae laudantium voluptatem eligendi quis quo, quibusdam nostrum libero quidem reiciendis sequi non reprehenderit ipsa dolorem perspiciatis quod tempora tempore officia laboriosam? Consectetur cum quia quis omnis aperiam, tempore iure quisquam sequi doloremque, blanditiis. Quasi, consectetur?</p><br>
                
                <p><h5>Sit amet, consectetur adipisicing elit. Autem vitae necessitatibus voluptate quidem excepturi fugiat ipsam expedita perspiciatis quasi quos. Blanditiis ex, vero nesciunt. Nostrum laboriosam doloribus voluptates porro at, officiis blanditiis, molestiae aspernatur odio magnam quisquam inventore sit voluptatum corporis illum deleniti ipsam nemo iusto veniam quidem repellendus. Incidunt. </h5></p> 

                <p>Adipisicing elit. Facilis illo quod, nostrum reprehenderit beatae obcaecati animi hic inventore architecto veniam? Velit veritatis sequi veniam dignissimos unde consequatur nihil itaque.</p>
                
                <h2>Vero minima non, eum optio magni laudantium doloremque debitis, in quae, nobis ut.</h2>

                <p>Adipisicing elit. Facilis illo quod, nostrum reprehenderit beatae obcaecati animi hic inventore architecto veniam? Velit veritatis sequi veniam dignissimos unde consequatur nihil itaque.</p>
                
              </div> <!-- /.blog-main-post -->
              <div class="tag-option clearfix">
                <ul class="float-left">
                  <li>Categoría:</li>
                  <li><a href="" class="tran3s">Cuidado,</a></li>
                  <li><a href="" class="tran3s">Alimentación,</a></li>
                  <li><a href="" class="tran3s">Diversión,</a></li>
                  <li><a href="" class="tran3s">Crecimiento</a></li>
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
        <!-- /Details -->
      </div> <!-- /.html-top-content -->

         </div>

@endsection