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
    <h2 class= "destacado"> Registro usuarios vendedores y administradores</h2>
    </header>
    <div class="navbar">
  <a href="index.jsp">Inicio </a>
   <a href="ingresarUsuarios.jsp">Registro usuarios </a> 
  <a href="consulta.jsp">Ver Producto</a>
  <a href="cerrarSesion.jsp">Cerrar Sesión</a>
  <a href="Categoria.jsp">Buscar por categoría</a>
</div>
<section>
<article>
<form action="agregarUsuarios.jsp" method="post" >
    <table>
        <tr><td>Nombres y Apellidos</td><td> <input type="text" name="txtNombre" required />*</td></tr>
        <tr><td>Cédula</td><td> <input type="text" name="txtCedula" maxlength="10" required />*</td></tr>
        <tr><td>Perfil</td><td><select name="cmbPerfil">
                    <option value="1">Administrador</option>
                    <option value="2">Cliente</option>
                    <option value="3">Vendedor</option>
                </select></td></tr>
        <tr><td>Estado Civil</td><td><select name="cmbECivil">
                    <option value="1">Soltero</option>
                    <option value="2">Casado</option>
                    <option value="3">Divorciado</option>
                    <option value="4">Viudo</option>
                </select></td></tr>
 		<tr><td>Correo</td><td><input type="email" name="txtCorreo" placeholder="usuario@nombreProveedor.dominio" /></td></tr>
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