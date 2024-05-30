<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  import="com.productos.negocio.*, java.util.List, java.util.ArrayList" session="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Detalle compra</title>
    <link rel="stylesheet" type="text/css" href="NewFile.css">
</head>
<body bgcolor="#F7EBEB">
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
</head>
<body>
<h1>Total del Carrito</h1>
<section>
<table border="1">
  <tr>
    <th>Producto</th>
    <th>Precio</th>
  </tr>
  <% Producto Producto = new Producto();
   
%>
<%
// Obtener la lista de elementos del carrito desde la sesión
List<Producto> listaElementos = (List<Producto>) session.getAttribute("carrito");

double total = 0.0;

if (listaElementos != null ) {
    for (Producto elemento : listaElementos) {
     double precio = elemento.getPrecio_pr();
      total += precio;
 
%>
  <tr>
    <td><%= elemento.getNombre_pr() %></td>
    <td>$<%= precio %></td>
  </tr>
<%
    }
}

%>
</table>

<h2>Total: $<%= total %></h2>
</section>
  <aside>
 	<a href="https://www.linkedin.com/in/steven-suntaxi-7a2a21163?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BN8Gt1hvcSn6JXuadSNwnPQ%3D%3D">Ver más información sobre los desarrolladores
	</a>
   </aside>
   <footer>
   <ul>
 <li>Facebook</li> 
   <li>Instagram</li>
   <li>Twitter</li>
   </ul>
   </footer>
</body>
</html>