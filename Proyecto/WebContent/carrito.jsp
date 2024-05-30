<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.productos.negocio.*, java.util.List, java.util.ArrayList" session="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito</title>
    <link rel="stylesheet" type="text/css" href="NewFile.css">
</head>
<body bgcolor="#F7EBEB">
<main>
<header>
    <h1>Venta de Refrescos</h1>
</header>
<div class="navbar">
  <a href="index.jsp">Inicio </a>
  <a href="consulta.jsp">Ver Producto</a>
  <a href="login.jsp">Iniciar Sesión</a>
  <a href="Categoria.jsp">Buscar por categoría</a>
  <a href="cerrarSesion.jsp">Cerrar Sesion</a>
</div>
 <section class="container">
        <div class="left">
<form name="listadoProductos" action="carrito.jsp" method="post">
<% 
    Producto Producto = new Producto();
    String tabla = Producto.consultarProductos();
    out.print(tabla);

%>
<p><input type="submit" name="button" id="button" value="Agregar"/></p>
</form>
  </div>
   <div class="right"> 
<h2>Mi carrito</h2>
<img src="carrito.png" width="100" height="auto" alt="carrito de compras" />
<ul>
<% 
    String[] elementos = request.getParameterValues("productos");
    int i = 0;
    if (elementos != null) {
        while (i < elementos.length) {
        //	elementos[i];
          //  out.println("<li>" + elementos[i] + "</li>");
            i++;
        }
    }
  

%>
</ul>

<form name="pagar" action="pagar.jsp" method="post">
<ul>
<%
    List<Producto> listaElementos = (List<Producto>) session.getAttribute("carrito");

   
    if (listaElementos == null) {
        listaElementos = new ArrayList<Producto>();
        session.setAttribute("carrito", listaElementos);
    }
    if (elementos != null) {
    		 for (String idProducto : elementos) {
    	            try {
    	            	 String[] partes = idProducto.split("[^\\d]+"); // Separa la cadena en partes basadas en cualquier cosa que no sea un dígito
    	            	 String parteEntera = partes[0]; // Obtiene la parte entera (la primera parte después de la separación)
    	                int id =Integer.parseInt(parteEntera);
    	                Producto p = Producto.ConsultarProductos(id);
    	                listaElementos.add(p);
    	            } catch (NumberFormatException e) {
    	                out.println("Error al convertir el ID del Producto: " + idProducto + "<br>");
    	            }
    	        }
    	}
       
    
   out.println("<li class="+"highlighted>" + "Productos:"+ "</li>");
    for (Producto tmp : listaElementos) {
        out.println("<li>" + tmp.getNombre_pr() + "</li>");
    }
    
%>
</ul>
<ul>

</ul>

	<input type="submit" name="button" id="pagar" value="Pagar"/>

</form>
</div>

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
