<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${pageContext.request.servletContext.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.servletContext.contextPath}/css/newportal.css">

<title>Nuevo registro</title>
</head>

<body class="fondo">

	<div class="container">
		<div class="signup-form-container">

			<div class="form-header">
				<h3 class="registration">
					<i class="fa fa-user"></i>Sistema de gestión de Usuarios
				</h3>
				<br> <br>
				<h4 align="center">Alta de nuevo usuario</h4>
			</div>
			<p></p>
			<br> <br>
			<div class="form-row">
				<div class="col-1"></div>
				<div class="col-10">
					<div class="form-body">
						<div class="form-group">
							<div>
								<form role="form" id="nuevoUsuario" autocomplete="off"
									class="credentials" method="post" action="guardarUsuario">
									<label>Nombre</label>
									<div class="input-group">
										<input name="nombre" type="text"
											class="form-control fontAwesome" />
									</div>
									<p></p>
									<label>Apellido</label>
									<div class="input-group">
										<input name="apellido" type="text"
											class="form-control fontAwesome" />
									</div>
									<p></p>
									<label>Usuario</label>
									<div class="input-group">
										<input name="usuario" type="text"
											class="form-control fontAwesome" />
									</div>
									<p></p>
									<label>Password</label>
									<div class="input-group">
										<input name="password" type="password"
											class="form-control fontAwesome" />
									</div>
									<p></p>
									<label>Email</label>
									<div class="input-group">
										<input name="email" type="text"
											class="form-control fontAwesome" />
									</div>
									<p></p>
									<label>Direcci&oacute;n</label>
									<div class="input-group">
										<input name="direccion" type="text"
											class="form-control fontAwesome" />
									</div>
									<p></p>
									<label>Tel&eacute;fono</label>
									<div class="input-group">
										<input name="telefono" type="text"
											class="form-control fontAwesome" />
									</div>
									<span class="input-group-btn">
										<button type="submit" class="btn btn-info">Guardar</button>
									</span>
								</form>
							</div>

						</div>
					</div>
				</div>

				<div class="col-1"></div>
			</div>

		</div>
	</div>

</body>
</html>
