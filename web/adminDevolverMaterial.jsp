<%-- 
    Document   : adminDevolverMaterial
    Created on : 11-29-2024, 10:20:33 PM
    Author     : jenni
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Devoluciones</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Estilo para que el panel lateral cubra toda la altura */
        .sidebar {
            min-height: 100vh; /* Altura mínima igual a la ventana */
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Panel Lateral -->
            <nav class="col-md-3 col-lg-2 d-md-block bg-dark sidebar text-white position-fixed">
                <div class="position-sticky pt-3">
                    <h5 class="text-center my-3">Panel de Administración</h5>
                    <ul class="nav flex-column">
                        <li class="nav-item">
                            <a class="nav-link text-white" href="adminPrestarMaterial.jsp">Prestar Material</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="ingresarMaterial.jsp">Ingresar Material</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="crearUsuario.jsp">Crear Usuario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="adminLiquidarMulta.jsp">Liquidar Multa</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active bg-secondary text-white" href="adminDevolverMaterial.jsp">Devolver Material</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="Utilidades.jsp">Utilidades</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="menuAdmin.jsp">Volver al Menú</a>
                        </li>
                    </ul>
                </div>
            </nav>

            <!-- Contenido Principal -->
            <main class="col-md-9 ms-sm-auto col-lg-10 offset-md-3 offset-lg-2 px-md-4">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h2>Registrar Devolución</h2>
                </div>
                <div class="card shadow">
                    <div class="card-header bg-info text-white text-center">
                        <h4>Devoluciones</h4>
                    </div>
                    <div class="card-body">
                        <form action="adminDevolverMaterial.jsp" method="post" class="needs-validation" novalidate>
                            <div class="mb-3">
                                <label for="materialCode" class="form-label">Código del Material</label>
                                <input type="text" class="form-control" id="materialCode" name="materialCode" required>
                                <div class="invalid-feedback">
                                    Por favor, ingrese el código del material.
                                </div>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Hacer Devolución</button>
                            </div>
                        </form>
                    </div>
                </div>

                <!-- Procesamiento de la devolución -->
                <div class="mt-3">
                    <%
                        String url = "jdbc:mysql://localhost:3306/tu_base_datos";
                        String username = "root";
                        String password = "password";

                        Connection conn = null;
                        PreparedStatement stmt = null;

                        if (request.getMethod().equalsIgnoreCase("POST")) {
                            String materialCode = request.getParameter("materialCode");

                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                conn = DriverManager.getConnection(url, username, password);

                                // Consulta para hacer la devolución del material
                                String query = "DELETE FROM prestamos WHERE codigo_material = ?";
                                stmt = conn.prepareStatement(query);
                                stmt.setString(1, materialCode);

                                int result = stmt.executeUpdate();

                                if (result > 0) {
                                    out.println("<div class='alert alert-success text-center'>Devolución registrada exitosamente</div>");
                                } else {
                                    out.println("<div class='alert alert-warning text-center'>No se encontró el material</div>");
                                }

                            } catch (Exception e) {
                                out.println("<div class='alert alert-danger text-center'>Ha ocurrido un error: " + e.getMessage() + "</div>");
                                e.printStackTrace();
                            } finally {
                                if (stmt != null) stmt.close();
                                if (conn != null) conn.close();
                            }
                        }
                    %>
                </div>
            </main>
        </div>
    </div>

    <!-- Bootstrap JS Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Validación del formulario con Bootstrap
        (function () {
            'use strict'
            const forms = document.querySelectorAll('.needs-validation')
            Array.from(forms).forEach(function (form) {
                form.addEventListener('submit', function (event) {
                    if (!form.checkValidity()) {
                        event.preventDefault()
                        event.stopPropagation()
                    }
                    form.classList.add('was-validated')
                }, false)
            })
        })()
    </script>
</body>
</html>



