<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.datos.* " session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Venta de Refrescos</title>
    <link rel="stylesheet" type="text/css" href="NewFile.css">
</head>
<body bgcolor="#F7EBEB">
<main>
<header>
    <h1>Venta de Refrescos</h1>
    <h2 class= "destacado"> Cambio de Clave</h2>
    </header>
    <div class="navbar">
  <a href="index.jsp">Inicio </a>
  <a href="consulta.jsp">Ver Producto</a>
    <a href="CambiarConstraseña.jsp">Cambiar Constraseña</a>
  
  <a href="cerrarSesion.jsp">Cerrar Sesión</a>
</div>
<section>
<article>
<form action="agregarUsuarios.jsp" method="post" >
    <table>
        <tr><td>Clave anterior</td><td> <input type="password" name="txtClaveAnterior" required />*</td></tr>
     
 		<tr><td>Clave nueva</td><td><input type="password" name="txtClaveNueva" required />*</td></tr>
 		 <tr><td>Repetir clave</td><td><input type="password" name="txtClaveRepetir" required />*</td></tr>
 		
    </table>
    <input type="submit" value="Enviar respuestas">
</form>
</article>



</section>




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

</body>
</html>