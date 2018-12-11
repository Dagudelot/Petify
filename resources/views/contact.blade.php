@extends('layouts.app')
@section('title', 'Contact')

@section('content')

				<div style="padding-top: 300px;">
					<div class="what-we-do bg">
						<div class="container">
							<!--Título-->
							<div class="theme-title-one text-center">
								<h2>¡Genial, gracias por querer contactarnos!</h2>
								<a href="#"><h5>También puedes donar para comprar comida <i class="material-icons">shopping_basket</i> <i class="material-icons">local_dining</i></h5></a>
							</div> <!-- /Título -->
							<div style="padding-top: 100px;">

							<!--Sección del formulario-->
							<div class="contact-us-section">
								<div class="container">
									<div class="row">

										<div class="col-xs-12">

										@if(isset($info))
											
											<div class="container">
												
												<div class="alert alert-success alert-dismissible" role="alert">
										  			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
										  			</button>
										  			<strong>Exito!</strong> El mensaje ha sido enviado correctamente. <br>
										  			{{ $info }}
												</div>

											</div>

										@endif


										</div>

										<div class="col-xs-12">
											<form action="{{ route('sendForm') }}" method="POST" class="contact-us-form form-validation" auto-complete="off">
												@csrf
												<label>Nombre completo</label>
												<input type="text" name="name">
												<label>Correo electrónico</label>
												<input type="email" name="email">
												<label>Asunto</label>
												<input type="text" name="subject">
												<label>Mensaje</label>
												<textarea  name="message"></textarea>
												<div class="theme-button">
													<span></span>
													<input type="submit" value="Enviar">
												</div>
											</form>

											<div style="padding-top: 100px;"></div>

											<!-- Mapa -->
											<div class="col-xs-12">
												<!--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15863.815616359221!2d-75.57430178033222!3d6.269792777390103!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x0!2zNsKwMTYnMTEuMyJOIDc1wrAzMyc1Ni4wIlc!5e0!3m2!1ses!2sco!4v1525223313196" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>-->
												<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3965.7727349822717!2d-75.55288198467446!3d6.293570527538234!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8e442f4a093e310d%3A0xf0f3f589268d5e97!2sCl.+104+%2343b-34%2C+Medell%C3%ADn%2C+Antioquia!5e0!3m2!1sen!2sco!4v1542830654938" width="100%" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>												
											</div>
											<!-- /Mapa -->
											<div style="padding-top: 100px;">
											</div> 
										</div> 
									</div>
									<!--/Sección del formulario-->
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>
@endsection