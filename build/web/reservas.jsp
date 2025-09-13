<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Reservas - Hotel Virtual</title>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <main style="padding:20px;">
        <h2>Reservas</h2>
        <p>En esta sección puedes gestionar las reservas de los clientes.</p>

        <section style="margin-top:20px;">
            <form>
                <label>Cliente: </label><input type="text" name="cliente"><br><br>
                <label>Habitación: </label><input type="text" name="habitacion"><br><br>
                <label>Fecha Ingreso: </label><input type="date" name="ingreso"><br><br>
                <label>Fecha Salida: </label><input type="date" name="salida"><br><br>
                <button type="submit">Registrar Reserva</button>
            </form>
        </section>
    </main>

    <%@ include file="footer.jsp" %>
</body>
</html>
