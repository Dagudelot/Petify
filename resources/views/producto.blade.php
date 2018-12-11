<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Guardando productos...</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	 <link href="{{ asset('css/minificado/bootstrap.min.css')}}" rel="stylesheet" />
    <link href="{{ asset('css/minificado/ingreso.min.css')}}" rel="stylesheet"/>
</head>
<body>
	<h2>Guardando productos...</h2>

	<form action="{{ route('saveproduct') }}" method="POST">
		@csrf
		<label for="producto">Nombre producto: </label>
		<input type="text" name="nomProducto">
		<button><input type="submit"></button>
	</form>

	@if(isset($detail))
<div class="alert alert-success alert-dismissible" role="alert">
<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span>
</button>
<strong>Exito!</strong> El producto ha sido enviado correctamente. <br>

</div>

	@endif
</body>
</html>