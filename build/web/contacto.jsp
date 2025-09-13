<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Contacto - Hotel Virtual</title>
</head>
<body>
    <%@ include file="navbar.jsp" %>

    <main style="padding:20px;">
        <h2>Contáctanos</h2>
        <p>Envíanos tus dudas, sugerencias o comentarios.</p>

        <section style="margin-top:20px;">
            <form>
                <label>Nombre: </label><input type="text" name="nombre"><br><br>
                <label>Email: </label><input type="email" name="email"><br><br>
                <label>Mensaje: </label><br>
                <textarea name="mensaje" rows="5" cols="40"></textarea><br><br>
                <button type="submit">Enviar</button>
            </form>
        </section>
    </main>

    <%@ include file="footer.jsp" %>
</body>
</html>
