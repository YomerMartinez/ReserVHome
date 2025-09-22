package com.reservhome.controller;

import com.reservhome.dao.ClienteDAO;
import com.reservhome.model.Cliente;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/clientes")
public class ClienteController {

    private ClienteDAO clienteDAO = new ClienteDAO();

    // 👉 Registrar cliente
    @PostMapping("/registrar")
    @ResponseBody
    public String registrar(@RequestParam String nombre,
                            @RequestParam String apellido,
                            @RequestParam String email,
                            @RequestParam String telefono,
                            @RequestParam String password) {

        Cliente cliente = new Cliente(0, nombre, apellido, email, telefono, password);
        boolean exito = clienteDAO.registrarCliente(cliente);

        return exito ? "✅ Registro exitoso" : "❌ Error en el registro";
    }

    // 👉 Login cliente
    @PostMapping("/login")
    @ResponseBody
    public String login(@RequestParam String email,
                        @RequestParam String password) {

        boolean valido = clienteDAO.login(email, password);

        return valido ? "🔑 Login exitoso" : "❌ Credenciales incorrectas";
    }
}
