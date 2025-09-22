package com.reservhome.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {

    private static final String URL = "jdbc:mysql://localhost:3306/reservhome_db";
    private static final String USER = "root";
    private static final String PASSWORD = "Deriva123456";

    /**
     * Método para obtener conexión a la base de datos.
     * @return Connection
     * @throws SQLException
     */
    public static Connection obtenerConexion() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver"); // Driver MySQL
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.println("Error: Driver JDBC no encontrado");
            e.printStackTrace();
            return null;
        }
    }
}
