/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.edu.udb.controlador;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sv.edu.udb.modelo.Libro;
import sv.edu.udb.modelo.Material;
import sv.edu.udb.modelo.Revista;

/**
 *
 * @author jenni
 */
public class AgregarMaterialServlet extends HttpServlet {

     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tipo = request.getParameter("tipo");
        
        // Obtener los parámetros comunes
        String titulo = request.getParameter("titulo");
        String autor = request.getParameter("autor");
        int unidadesDisponibles = Integer.parseInt(request.getParameter("unidadesDisponibles"));
        String ubicacion = request.getParameter("ubicacion");
        Date fechaCompra = Date.valueOf(request.getParameter("fechaCompra"));
        
        // Crear un objeto del tipo correspondiente
        Material material = null;
        
        if (tipo.equals("libro")) {
            // Obtener los parámetros específicos de los libros
            String isbn = request.getParameter("isbn");
            String editorial = request.getParameter("editorial");
            material = new Libro(titulo, autor, unidadesDisponibles, ubicacion, fechaCompra, isbn, editorial);
        } else if (tipo.equals("revista")) {
            // Obtener los parámetros específicos de las revistas
            Date fechaPublicacion = Date.valueOf(request.getParameter("fechaPublicacion"));
            material = new Revista(titulo, autor, unidadesDisponibles, ubicacion, fechaCompra, fechaPublicacion);
        }
        
        // Guardar el material en la base de datos
        try {
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mediateca", "usuario", "contraseña");
            String query = "INSERT INTO materiales (tipo, titulo, autor, unidadesDisponibles, ubicacion, fechaCompra) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = conn.prepareStatement(query);
            pst.setString(1, tipo);
            pst.setString(2, material.getTitulo());
            pst.setString(3, material.getAutor());
            pst.setInt(4, material.getUnidadesDisponibles());
            pst.setString(5, material.getUbicacion());
            pst.setDate(6, material.getFechaCompra());
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        
        // Redirigir o mostrar un mensaje de éxito
        response.sendRedirect("materiales.jsp");
    }
}
