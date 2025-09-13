<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Clientes - Hotel Virtual</title>
    <meta charset="UTF-8">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f8f9fa;
        }
        main {
            padding: 20px;
        }
        h2 {
            color: #333;
        }
        form {
            margin-top: 20px;
            max-width: 400px;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 2px 2px 8px rgba(0,0,0,0.1);
        }
        label {
            display: block;
            margin-top: 10px;
            font-weight: bold;
        }
        input {
            width: 100%;
            padding: 8px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            margin-top: 15px;
            padding: 10px;
            width: 100%;
            background-color: #007bff;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <main>
        <h2>Gestión de Clientes</h2>
        <p>En esta sección puedes registrar, editar o eliminar clientes del sistema.</p>

        <form>
            <label>Nombre:</label>
            <input type="text" name="nombre" placeholder="Escribe el nombre del cliente">

            <label>Email:</label>
            <input type="email" name="email" placeholder="ejemplo@correo.com">

            <label>Teléfono:</label>
            <input type="text" name="telefono" placeholder="Número de contacto">

            <button type="submit">Registrar Cliente</button>
        </form>
    </main>

    <%@ include file="footer.jsp" %>
</body>
</html>
