<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.reservhome.model.Cliente" %>
<%@ page import="java.util.List" %>

<html>
<head>
    <title>Gestión de Clientes - ReserVHome</title>
</head>
<body>
<h1>Lista de Clientes</h1>

<%-- Mostrar lista de clientes --%>
<%
    List<Cliente> clientes = (List<Cliente>) request.getAttribute("clientes");
%>
<table border="1">
    <tr>
        <th>ID</th>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>Email</th>
        <th>Teléfono</th>
        <th>Acciones</th>
    </tr>
    <%
        if (clientes != null) {
            for (Cliente c : clientes) {
    %>
    <tr>
        <td><%= c.getId() %></td>
        <td><%= c.getNombre() %></td>
        <td><%= c.getApellido() %></td>
        <td><%= c.getEmail() %></td>
        <td><%= c.getTelefono() %></td>
        <td>
            <form action="ClienteServlet" method="post" style="display:inline;">
                <input type="hidden" name="accion" value="actualizar">
                <input type="hidden" name="id" value="<%= c.getId() %>">
                Nombre: <input type="text" name="nombre" value="<%= c.getNombre() %>">
                Apellido: <input type="text" name="apellido" value="<%= c.getApellido() %>">
                Email: <input type="text" name="email" value="<%= c.getEmail() %>">
                Teléfono: <input type="text" name="telefono" value="<%= c.getTelefono() %>">
                <input type="submit" value="Actualizar">
            </form>

            <form action="ClienteServlet" method="get" style="display:inline;">
                <input type="hidden" name="accion" value="eliminar">
                <input type="hidden" name="id" value="<%= c.getId() %>">
                <input type="submit" value="Eliminar">
            </form>
        </td>
    </tr>
    <%
            }
        }
    %>
</table>

<hr>

<h2>Agregar Nuevo Cliente</h2>
<form action="ClienteServlet" method="post">
    <input type="hidden" name="accion" value="insertar">
    Nombre: <input type="text" name="nombre" required><br>
    Apellido: <input type="text" name="apellido" required><br>
    Email: <input type="email" name="email" required><br>
    Teléfono: <input type="text" name="telefono"><br>
    <input type="submit" value="Agregar Cliente">
</form>

</body>
</html>
