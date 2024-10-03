<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.servletContext.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.servletContext.contextPath}/css/newportal.css">

<title>Inicio de sesión</title>
</head>

<body class="fondo">

	<div class="container">
		<div class="signup-form-container">

			<div class="form-header">
				<h3 class="registration">
					<i class="fa fa-user"></i>Sistema de gestión de usuarios
				</h3>
				<h2>&nbsp;</h2>
			</div>

			<div class="form-row">
				<div class="col-3"></div>
				<div class="col-6">
					<div class="form-body">
						<div class="form-group">
							<div>
								<form:form role="form" id="login-usuarios" autocomplete="off"
									class="credentials" method="post" action="login" modelAttribute="usuario">
									Acceso de usuarios
									<div class="input-group">
										<form:input name="usuario" type="text"
											class="form-control fontAwesome"
											placeholder="Usuario" path="usuario" />
									</div>
									<p></p>
									<div class="input-group">
										<form:input name="password" type="password"
											class="form-control fontAwesome"
											placeholder="Password" path="password" /> 
											<span class="input-group-btn">
												<button type="submit" class="btn btn-info">Login...</button>
											</span>
									</div>
									<a href="${pageContext.request.servletContext.contextPath}/nuevoUsuario">Nuevo usuario...</a>
								</form:form>
							</div>

						</div>
					</div>
				</div>

			</div>

		</div>
	</div>

</body>
</html>
