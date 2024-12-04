/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.edu.udb.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/crearUsuarioServlet")
public class CrearUsuarioServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Datos de conexión a la base de datos
    private String jdbcURL = "jdbc:mysql://localhost:3306/tu_base_datos";
    private String jdbcUsername = "root";
    private String jdbcPassword = "password";

    // Método para conectarse a la base de datos
    protected Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return connection;
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        
        // Obtener los datos del formulario
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String carnet = request.getParameter("carnet");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rol = request.getParameter("rol");

        // Lógica para guardar los datos en la base de datos
        String sql = "INSERT INTO usuarios (nombre, apellido, carnet, username, password, rol) VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection connection = getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(sql)) {

            // Asignar valores al PreparedStatement
            preparedStatement.setString(1, nombre);
            preparedStatement.setString(2, apellido);
            preparedStatement.setString(3, carnet);
            preparedStatement.setString(4, username);
            preparedStatement.setString(5, password);
            preparedStatement.setString(6, rol);

            // Ejecutar la inserción
            int result = preparedStatement.executeUpdate();

            // Enviar respuesta al usuario
            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            if (result > 0) {
                out.println("<h3>Usuario creado exitosamente</h3>");
            } else {
                out.println("<h3>Error al crear el usuario</h3>");
            }

            out.println("<a href='crearUsuario.jsp'>Volver</a>");

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Redirige al formulario si se usa GET en vez de POST
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
        throws ServletException, IOException {
        response.sendRedirect("crearUsuario.jsp");
    }
}
