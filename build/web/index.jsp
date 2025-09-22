<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>ReserVHome</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #fff;
            color: #333;
        }

        /* Navbar */
        .navbar {
            background-color: #003366;
            padding: 10px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
        }

        .navbar img {
            height: 50px;
        }

        .navbar ul {
            list-style: none;
            margin: 0;
            padding: 0;
            display: flex;
        }

        .navbar ul li {
            margin-left: 20px;
        }

        .navbar ul li a {
            color: white;
            text-decoration: none;
            font-weight: bold;
        }

        /* Contenido principal */
        .container {
            text-align: center;
            padding: 30px;
        }

        .container h1 {
            color: #003366;
        }

        .container img {
            width: 300px;
            border-radius: 8px;
        }

        /* Servicios */
        .services {
            margin-top: 30px;
            text-align: left;
            width: 50%;
            margin-left: auto;
            margin-right: auto;
        }

        .services h2 {
            color: #003366;
        }

        /* Footer */
        .footer {
            background-color: #222;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <img src="<%= request.getContextPath() %>/img/hotel-logo.jpg" alt="Hotel Logo">
        <ul>
            <li><a href="<%= request.getContextPath() %>/index.jsp">Inicio</a></li>
            <li><a href="<%= request.getContextPath() %>/reservas.jsp">Reservas</a></li>
            <li><a href="<%= request.getContextPath() %>/habitaciones.jsp">Habitaciones</a></li>
            <li><a href="<%= request.getContextPath() %>/contacto.jsp">Contacto</a></li>
            <li><a href="<%= request.getContextPath() %>/clientes.jsp">Clientes</a></li>
        </ul>
    </div>

    <!-- Contenido principal -->
    <div class="container">
        <h1>Bienvenido al ReserVHome</h1>
        <p>Realiza tus reservas de manera fácil, rápida y segura desde nuestra plataforma.</p>
        <img src="<%= request.getContextPath() %>/img/hotel-logo.jpg" alt="Hotel Logo">
    </div>

    <!-- Servicios -->
    <div class="services">
        <h2>Servicios disponibles</h2>
        <ul>
            <li>Wi-Fi gratuito</li>
            <li>Desayuno incluido</li>
            <li>Piscina y gimnasio</li>
            <li>Parqueadero</li>
        </ul>
    </div>

    <!-- Footer -->
    <div class="footer">
        © 2025 ReserVHome. Todos los derechos reservados.
    </div>

</body>
</html>
