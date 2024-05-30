<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
    import="com.producto.datos.*"%>
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
  <a href="consultaInvitado.jsp">Ver Producto</a>
  <a href="login.jsp">Iniciar Sesión</a>
  <a href="Categoria.jsp">Buscar por categoría</a>
  </div>
   <div class="content">
   <section>
   <form action="RegistroP.jsp" method="post">
   <article>
    <h1> Ingresar Producto </h1>

    <table>
	<tr><td>Categoría</td><td><input type = "text" name="pd_categoria" value=""/></td></tr>
	<tr><td>Producto</td><td><input type = "text" name="pd_nombre" value=""/></td></tr>
	<tr><td>Cantidad</td><td><input type= "text" name="pd_cantidad" value=""/></td></tr>
	<tr><td>Precio</td><td><input type= "text" name="pd_precio" value=""/></td></tr>
	<tr><td>Imagen Producto</td><td><input  type= "file" name="pd_imagen" /></td></tr> 
	</table>
	<input type="submit" name="Actualizar"/>
   </article>
   </form>

   </section>
 <aside>
 	<a href="https://ec.linkedin.com/">Ver más información sobre los desarrolladores
	</a>
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