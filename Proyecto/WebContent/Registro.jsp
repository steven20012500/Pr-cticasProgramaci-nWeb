<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.producto.datos.*"%>
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
  <a href="consulta.jsp">Ver Producto</a>
  <a href="login.jsp">Iniciar Sesión</a>
  <a href="Categoria.jsp">Buscar por categoría</a>
</div>
<div class="content">
<section>
<article>
<form action="respuesta.jsp" method="post" >
    <table>
        <tr><td>Nombres y Apellidos</td><td> <input type="text" name="txtNombre" required />*</td></tr>
        <tr><td>Cédula</td><td> <input type="text" name="txtCedula" maxlength="10" required />*</td></tr>
        <tr><td>Estado Civil</td><td><select name="cmbECivil">
                    <option value="1">Soltero</option>
                    <option value="2">Casado</option>
                    <option value="3">Divorciado</option>
                    <option value="4">Viudo</option>
                </select></td></tr>
 		<tr><td>Correo</td><td><input type="email" name="txtCorreo" placeholder="usuario@nombreProveedor.dominio" /></td></tr>
 		<tr><td>Clave</td><td><input type="password" name="txtClave" required />*</td></tr>
    </table>
    <input type="submit" value="Enviar respuestas">
</form>
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
