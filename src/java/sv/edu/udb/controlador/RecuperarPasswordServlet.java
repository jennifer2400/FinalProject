package sv.edu.udb.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author jenni
 */
@WebServlet(name = "RecuperarPasswordServlet", urlPatterns = {"/RecuperarPasswordServlet"})
public class RecuperarPasswordServlet extends HttpServlet {

    // Configuración de la base de datos
    private static final String DB_URL = "jdbc:mysql://localhost:3306/tu_base_datos";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "password";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Obtener parámetros del formulario
        String username = request.getParameter("username");
        String newPassword = request.getParameter("newPassword");
        String confirmPassword = request.getParameter("confirmPassword");

        try (PrintWriter out = response.getWriter()) {
            // Validar que las contraseñas coincidan
            if (!newPassword.equals(confirmPassword)) {
                out.println("<script>alert('Las contraseñas no coinciden'); window.history.back();</script>");
                return;
            }

            // Llamar al método para verificar usuario y actualizar contraseña
            if (verificarYActualizarPassword(username, newPassword)) {
                out.println("<script>alert('Contraseña actualizada exitosamente'); window.location.href='Login.jsp';</script>");
            } else {
                out.println("<script>alert('Usuario no encontrado o error al actualizar'); window.history.back();</script>");
            }
        }
    }

    private boolean verificarYActualizarPassword(String username, String newPassword) {
        Connection conn = null;
        PreparedStatement psSelect = null;
        PreparedStatement psUpdate = null;
        ResultSet rs = null;

        try {
            // Conectar a la base de datos
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Verificar si el usuario existe
            String querySelect = "SELECT * FROM usuarios WHERE username = ?";
            psSelect = conn.prepareStatement(querySelect);
            psSelect.setString(1, username);
            rs = psSelect.executeQuery();

            if (rs.next()) {
                // Si el usuario existe, actualizar la contraseña
                String queryUpdate = "UPDATE usuarios SET password = ? WHERE username = ?";
                psUpdate = conn.prepareStatement(queryUpdate);
                psUpdate.setString(1, newPassword);
                psUpdate.setString(2, username);
                psUpdate.executeUpdate();
                return true;
            } else {
                // Usuario no encontrado
                return false;
            }

        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            // Cerrar conexiones
            try {
                if (rs != null) rs.close();
                if (psSelect != null) psSelect.close();
                if (psUpdate != null) psUpdate.close();
                if (conn != null) conn.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Recuperar contraseña servlet";
    }
}
