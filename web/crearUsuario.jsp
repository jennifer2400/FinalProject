<%-- 
    Document   : crearUsuario
    Created on : 11-29-2024, 10:22:12 PM
    Author     : jenni
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Usuario</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .sidebar {
            min-height: 100vh; /* Altura mínima para cubrir toda la pantalla */
        }
    </style>
</head>
<body class="bg-light">
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
                            <a class="nav-link active bg-secondary text-white" href="crearUsuario.jsp">Crear Usuario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="adminLiquidarMulta.jsp">Liquidar Multa</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white" href="adminDevolverMaterial.jsp">Devolver Material</a>
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
                    <h2>Crear Usuario</h2>
                </div>
                <div class="card shadow">
                    <div class="card-header bg-primary text-white text-center">
                        <h4>Formulario para Crear Usuario</h4>
                    </div>
                    <div class="card-body">
                        <form action="crearUsuario.jsp" method="post" class="needs-validation" novalidate>
                            <div class="mb-3">
                                <label for="nombre" class="form-label">Nombre</label>
                                <input type="text" class="form-control" id="nombre" name="nombre" required>
                                <div class="invalid-feedback">Por favor, ingrese el nombre.</div>
                            </div>
                            <div class="mb-3">
                                <label for="apellido" class="form-label">Apellido</label>
                                <input type="text" class="form-control" id="apellido" name="apellido" required>
                                <div class="invalid-feedback">Por favor, ingrese el apellido.</div>
                            </div>
                            <div class="mb-3">
                                <label for="carnet" class="form-label">Carnet</label>
                                <input type="text" class="form-control" id="carnet" name="carnet" required>
                                <div class="invalid-feedback">Por favor, ingrese el carnet.</div>
                            </div>
                            <div class="mb-3">
                                <label for="username" class="form-label">Nombre de Usuario</label>
                                <input type="text" class="form-control" id="username" name="username" required>
                                <div class="invalid-feedback">Por favor, ingrese el nombre de usuario.</div>
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Contraseña</label>
                                <input type="password" class="form-control" id="password" name="password" required>
                                <div class="invalid-feedback">Por favor, ingrese la contraseña.</div>
                            </div>
                            <div class="mb-3">
                                <label for="rol" class="form-label">Rol</label>
                                <select class="form-select" id="rol" name="rol" required>
                                    <option value="Administrador">Administrador</option>
                                    <option value="Docente">Docente</option>
                                    <option value="Estudiante">Estudiante</option>
                                </select>
                                <div class="invalid-feedback">Por favor, seleccione un rol.</div>
                            </div>
                            <div class="text-center">
                                <button type="submit" class="btn btn-primary">Crear Usuario</button>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="mt-3">
                    <%
                        String url = "jdbc:mysql://localhost:3306/tu_base_datos";
                        String username = "root";
                        String password = "password";

                        Connection conn = null;
                        PreparedStatement stmt = null;

                        if (request.getMethod().equalsIgnoreCase("POST")) {
                            String nombre = request.getParameter("nombre");
                            String apellido = request.getParameter("apellido");
                            String carnet = request.getParameter("carnet");
                            String user = request.getParameter("username");
                            String pass = request.getParameter("password");
                            String rol = request.getParameter("rol");

                            try {
                                Class.forName("com.mysql.cj.jdbc.Driver");
                                conn = DriverManager.getConnection(url, username, password);

                                String query = "INSERT INTO usuarios (nombre, apellido, carnet, username, password, rol) VALUES (?, ?, ?, ?, ?, ?)";
                                stmt = conn.prepareStatement(query);
                                stmt.setString(1, nombre);
                                stmt.setString(2, apellido);
                                stmt.setString(3, carnet);
                                stmt.setString(4, user);
                                stmt.setString(5, pass);
                                stmt.setString(6, rol);

                                int result = stmt.executeUpdate();

                                if (result > 0) {
                                    out.println("<div class='alert alert-success text-center'>Usuario creado exitosamente</div>");
                                } else {
                                    out.println("<div class='alert alert-warning text-center'>No se pudo crear el usuario</div>");
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
        // Validación con Bootstrap
        (function () {
            'use strict';
            const forms = document.querySelectorAll('.needs-validation');
            Array.from(forms).forEach(form => {
                form.addEventListener('submit', event => {
                    if (!form.checkValidity()) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        })();
    </script>
</body>
</html>



