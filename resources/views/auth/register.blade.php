@extends('auth.app')

@section('content')
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-md-offset-4 col-sm-6 col-sm-offset-3">
						<div class="card tarjeta-registro">
							<form class="form" method="POST" action="{{ route('register') }}">
								@csrf
								<div class="header header-primary text-center">
									<h4>Crear cuenta</h4>
								</div>
								<p class="text-divider">¡Genial, serás un miembro más!</p>
								<div class="content">

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">account_box</i>
										</span>
										<input id="name" type="text" class="form-control{{ $errors->has('name') ? ' is-invalid' : '' }}"  placeholder="Nombre completo..." name="name" value="{{ old('name') }}" required autofocus>

		                                @if ($errors->has('name'))
		                                    <span class="invalid-feedback" role="alert">
		                                        <strong>{{ $errors->first('name') }}</strong>
		                                    </span>
		                                @endif
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">email</i>
										</span>
										<input id="email" type="email" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" placeholder="Correo electrónico..." name="email" value="{{ old('email') }}" required>

		                                @if ($errors->has('email'))
		                                    <span class="invalid-feedback" role="alert">
		                                        <strong>{{ $errors->first('email') }}</strong>
		                                    </span>
		                                @endif
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">vpn_key</i>
										</span>
										<input id="password" type="password"  placeholder="Contraseña..." class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" required>

		                                @if ($errors->has('password'))
		                                    <span class="invalid-feedback" role="alert">
		                                        <strong>{{ $errors->first('password') }}</strong>
		                                    </span>
		                                @endif
									</div>

									<div class="input-group">
										<span class="input-group-addon">
											<i class="material-icons">lock_outline</i>
										</span>
										<input id="password-confirm" type="password" placeholder="Repetir contraseña..." class="form-control" name="password_confirmation" required>
									</div>


									<div class="checkbox">
										<label>
											<input type="checkbox" name="optionsCheckboxes">
											Acepto los <a href="#" target="_blank">términos y condiciones</a>
										</label>
									</div>
								</div>
								<div class="footer text-center" style="min-height: 100px;">
									<button type="submit" class="btn btn-simple btn-primary btn-lg">¡Regístrate!  <i class="material-icons">pets</i></button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
@endsection