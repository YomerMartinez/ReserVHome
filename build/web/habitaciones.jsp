<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Habitaciones - Hotel Virtual</title>
    <style>
        .habitaciones-container {
            display: flex;
            gap: 20px;
            margin-top: 20px;
            flex-wrap: wrap;
        }
        .habitacion-card {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 15px;
            width: 250px;
            text-align: center;
            box-shadow: 2px 2px 8px rgba(0,0,0,0.2);
            transition: transform 0.2s;
        }
        .habitacion-card:hover {
            transform: scale(1.05);
        }
        .habitacion-card img {
            width: 100%;
            height: 150px;
            object-fit: cover;
            border-radius: 8px;
            margin-bottom: 10px;
        }
        .habitacion-card h3 {
            margin: 10px 0;
        }
        .habitacion-card p {
            font-size: 14px;
            color: #555;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <main style="padding:20px;">
        <h2>Habitaciones</h2>
        <p>Explora las habitaciones disponibles en el hotel.</p>

        <div class="habitaciones-container">
            <div class="habitacion-card">
                <img src="img/sencilla.jpg" alt="Habitación Sencilla">
                <h3>Habitación Sencilla</h3>
                <p>Ideal para una persona, equipada con cama individual, baño privado y escritorio.</p>
            </div>

            <div class="habitacion-card">
                <img src="img/doble.jpg" alt="Habitación Doble">
                <h3>Habitación Doble</h3>
                <p>Perfecta para parejas, incluye cama doble, TV y aire acondicionado.</p>
            </div>

            <div class="habitacion-card">
                <img src="img/suite.png" alt="Suite de Lujo">
                <h3>Suite</h3>
                <p>La mejor opción para disfrutar, con sala privada, cama king size y jacuzzi.</p>
            </div>
        </div>
    </main>

    <%@ include file="footer.jsp" %>
</body>
</html>
