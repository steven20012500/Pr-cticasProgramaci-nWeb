<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.producto.datos.*"%>
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
    <h2 class= "destacado"> Bebidas refrescantes</h2>
    </header>
    <div class="navbar">
  <a href="index.jsp">Inicio </a>
  <a href="consulta.jsp">Ver Producto</a>
  <a href="cerrarSesion.jsp">Cerrar Sesión</a>
  <a href="Categoria.jsp">Buscar por categoría</a>
</div>
<h1>Ingreso de usuarios</h1>
<section>
 <% 
    String nombre=request.getParameter("txtNombre");
    String cedula=request.getParameter("txtCedula");
    String estadoCivil=request.getParameter("cmbECivil");
    String residencia=request.getParameter("rdResidencia");
    String correo=request.getParameter("txtCorreo");
    String clave=request.getParameter("txtClave");
    String foto=request.getParameter("fileFoto");
    String colorFavorito=request.getParameter("color");
    String perfil=request.getParameter("cmbPerfil");
    %>
    <h2>Respuestas del formulario:</h2>
    Su nombre es: <%=nombre %><br>
    Cedula: <%=cedula%><br>
    Su estado civil es: <%= estadoCivil%><br>
   <%
   Usuario usuario = new Usuario();
   usuario.setEstado(Integer.parseInt(estadoCivil));
   usuario.setNombre(nombre);
   usuario.setCedula(cedula);
   usuario.setCorreo(correo);
   usuario.setId_perfil(Integer.parseInt(perfil));
   out.println(usuario.agregarUser());
   %>
   
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