package com.reservhome.dao;

import com.reservhome.model.Cliente;
import com.reservhome.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ClienteDAO {

    // INSERTAR CLIENTE
    public boolean insertarCliente(Cliente cliente) {
        String sql = "INSERT INTO clientes(nombre, apellido, email, telefono) VALUES(?,?,?,?)";
        try (Connection conexion = DBConnection.obtenerConexion();
             PreparedStatement ps = conexion.prepareStatement(sql)) {

            ps.setString(1, cliente.getNombre());
            ps.setString(2, cliente.getApellido());
            ps.setString(3, cliente.getEmail());
            ps.setString(4, cliente.getTelefono());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // CONSULTAR TODOS LOS CLIENTES
    public List<Cliente> obtenerClientes() {
        List<Cliente> listaClientes = new ArrayList<>();
        String sql = "SELECT * FROM clientes";
        try (Connection conexion = DBConnection.obtenerConexion();
             Statement st = conexion.createStatement();
             ResultSet rs = st.executeQuery(sql)) {

            while (rs.next()) {
                Cliente cliente = new Cliente(
                        rs.getInt("id"),
                        rs.getString("nombre"),
                        rs.getString("apellido"),
                        rs.getString("email"),
                        rs.getString("telefono")
                );
                listaClientes.add(cliente);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return listaClientes;
    }

    // ACTUALIZAR CLIENTE
    public boolean actualizarCliente(Cliente cliente) {
        String sql = "UPDATE clientes SET nombre=?, apellido=?, email=?, telefono=? WHERE id=?";
        try (Connection conexion = DBConnection.obtenerConexion();
             PreparedStatement ps = conexion.prepareStatement(sql)) {

            ps.setString(1, cliente.getNombre());
            ps.setString(2, cliente.getApellido());
            ps.setString(3, cliente.getEmail());
            ps.setString(4, cliente.getTelefono());
            ps.setInt(5, cliente.getId());

            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    // ELIMINAR CLIENTE
    public boolean eliminarCliente(int id) {
        String sql = "DELETE FROM clientes WHERE id=?";
        try (Connection conexion = DBConnection.obtenerConexion();
             PreparedStatement ps = conexion.prepareStatement(sql)) {

            ps.setInt(1, id);
            return ps.executeUpdate() > 0;

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }
}
