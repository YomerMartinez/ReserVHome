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
    </style>
</head>
<body>

    <%@ include file="navbar.jsp" %>

    <!-- Contenido principal -->
    <div class="container">
        <h1>Bienvenido al ReserVHome</h1>
        <p>Realiza tus reservas de manera fácil, rápida y segura desde nuestra plataforma.</p>
        <img src="img/hotel-logo.jpg" alt="Hotel Logo">
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

    <%@ include file="footer.jsp" %>

</body>
</html>
