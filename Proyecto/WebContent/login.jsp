<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Venta de Refrescos</title>
    <link rel="stylesheet" type="text/css" href="NewFile.css">
</head>
<body bgcolor="#F7EBEB">
<main>
<header>
    <h1>Venta de Refrescos</h1>
    <h2 class= "destacado">Bebidas refrescantes</h2>
</header>
<div class="navbar">
  <a href="index.jsp">Inicio </a>
  <a href="consultaInvitado.jsp">Ver Producto</a>
  <a href="login.jsp">Iniciar Sesión</a>
  <a href="Categoria.jsp">Buscar por categoría</a>
</div>
<div class="content">
<section>
<article>
<form action="verificarLogin.jsp" method="post" >
    <table>
        <tr><td>Usuario</td><td> <input type="text" name="txtUsuario" required />*</td></tr>
        <tr><td>Clave</td><td> <input type="password" name="txtClave" required />*</td></tr>
    </table>
    <input type="submit" value="Enviar respuestas">
</form>
    <button onclick="location.href='Registro.jsp'">Registrar</button>

</article>
</section>
<aside>
    <a href="https://ec.linkedin.com/">Ver más información sobre los desarrolladores</a>
</aside>
</div>
<footer>
    <ul>
        <li>Facebook</li>
        <li>Instagram</li>
        <li>Twitter</li>
    </ul>
</footer>
</main>
</body>
</html>

