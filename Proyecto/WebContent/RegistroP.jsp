<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*"
    import="com.producto.datos.* "%>
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
   <article>
   <h1> Ingreso de productos </h1>
   <%
   String nombre = request.getParameter("pd_nombre");
   Double pre = Double.parseDouble(request.getParameter("pd_precio"));
   Integer cant = Integer.parseInt(request.getParameter("pd_cantidad"));
   Integer cat = Integer.parseInt(request.getParameter("pd_categoria"));
   //String foto = request.getPart("pd_imagen");
   String foto = request.getParameter("pd_imagen");
   String foto2="null";
 //  InputStream inputStram = foto.getInputStream();
  // ByteArrayOutputStream ou
   Producto  producto  = new Producto();  
   out.println(producto.ingresarProducto(cat, nombre, cant, pre, foto));
   /*
   if(actualizado == true){
	  out.println("Producto cargado correctamente");
   } else {
	   out.println("algo salio mal");
   }*/
   %>
   </article>
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