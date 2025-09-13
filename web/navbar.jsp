<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav style="background-color:#003366; padding: 15px; display: flex; justify-content: space-between; align-items: center;">
    <div>
        <a href="<%= request.getContextPath() %>/index.jsp" style="color:white; font-weight:bold; text-decoration:none; margin-right: 20px;">Hotel Virtual</a>
    </div>
    <div>
        <a href="<%= request.getContextPath() %>/index.jsp" style="color:white; margin: 0 10px;">Inicio</a>
        <a href="<%= request.getContextPath() %>/reservas.jsp" style="color:white; margin: 0 10px;">Reservas</a>
        <a href="<%= request.getContextPath() %>/habitaciones.jsp" style="color:white; margin: 0 10px;">Habitaciones</a>
        <a href="<%= request.getContextPath() %>/clientes.jsp" style="color:white; margin: 0 10px;">Clientes</a>
        <a href="<%= request.getContextPath() %>/contacto.jsp" style="color:white; margin: 0 10px;">Contacto</a>
    </div>
</nav>
