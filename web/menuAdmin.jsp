<%-- 
    Document   : menuAdmin
    Created on : 11-29-2024, 10:18:24 PM
    Author     : jenni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Panel de Administración</title>

        <!-- Bootstrap 5 CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        
        <style>
            body {
                background-color: #f4f4f4;
                font-family: Arial, sans-serif;
            }

            /* Estilo del contenedor de las tarjetas */
            .card-container {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                margin-top: 30px;
            }

            .card {
                width: 18rem;
                margin: 20px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                border-radius: 10px;
            }

            .card img {
                width: 100px;    /* Ajusta el ancho */
                height: 100px;   /* Ajusta la altura */
                object-fit: cover;
                margin: 20px auto;
            }

            .card-body {
                text-align: center;
            }

            /* Estilo del botón de cerrar sesión */
            .logout-btn {
                display: block;
                width: 200px;
                margin: 30px auto;
                padding: 10px 20px;
                font-size: 1.1rem;
                background-color: #ff4d4d;
                color: white;
                border: none;
                border-radius: 5px;
                text-align: center;
            }

            .logout-btn:hover {
                background-color: #ff3333;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mt-4">Panel de Administración</h1>
            <p class="text-center">Accede a las diferentes utilidades del sistema.</p>

            <!-- Contenedor de las tarjetas -->
            <div class="card-container">
                <!-- Prestamos de Materiales -->
                <div class="card">
                    <img src="img/prestamomaterial.png" class="card-img-top" alt="Prestamos de Materiales">
                    <div class="card-body">
                        <h5 class="card-title">Préstamos de Materiales</h5>
                        <p class="card-text">Registra el préstamo de materiales de la biblioteca.</p>
                        <a href="adminPrestarMaterial.jsp" class="btn btn-primary">Ir a Préstamos</a>
                    </div>
                </div>

                <!-- Utilidades -->
                <div class="card">
                    <img src="img/utilidad.png" class="card-img-top" alt="Utilidades">
                    <div class="card-body">
                        <h5 class="card-title">Utilidades</h5>
                        <p class="card-text">Accede a las utilidades para administrar la biblioteca.</p>
                        <a href="Utilidades.jsp" class="btn btn-primary">Ver Utilidades</a>
                    </div>
                </div>

                <!-- Registrar Recurso -->
                <div class="card">
                    <img src="img/recurso.png" class="card-img-top" alt="Registrar Recurso">
                    <div class="card-body">
                        <h5 class="card-title">Registrar Recurso</h5>
                        <p class="card-text">Añade nuevos materiales a la biblioteca.</p>
                        <a href="ingresarMaterial.jsp" class="btn btn-primary">Registrar Recurso</a>
                    </div>
                </div>

                <!-- Crear Usuario -->
                <div class="card">
                    <img src="img/user.png" class="card-img-top" alt="Crear Usuario">
                    <div class="card-body">
                        <h5 class="card-title">Crear Usuario</h5>
                        <p class="card-text">Añade nuevos usuarios al sistema.</p>
                        <a href="crearUsuario.jsp" class="btn btn-primary">Crear Usuario</a>
                    </div>
                </div>

                <!-- Liquidar Multas -->
                <div class="card">
                    <img src="img/liquidar.png" class="card-img-top" alt="Liquidar Multas">
                    <div class="card-body">
                        <h5 class="card-title">Liquidar Multas</h5>
                        <p class="card-text">Gestiona las multas de los usuarios.</p>
                        <a href="adminLiquidarMulta.jsp" class="btn btn-primary">Liquidar Multas</a>
                    </div>
                </div>

                <!-- Devoluciones -->
                <div class="card">
                    <img src="img/devolucion.png" class="card-img-top" alt="Devoluciones">
                    <div class="card-body">
                        <h5 class="card-title">Devoluciones</h5>
                        <p class="card-text">Registra la devolución de materiales prestados.</p>
                        <a href="adminDevolverMaterial.jsp" class="btn btn-primary">Registrar Devolución</a>
                    </div>
                </div>
            </div>

            <!-- Botón de cerrar sesión -->
            <a href="Login.jsp" class="logout-btn">Cerrar Sesión</a>
        </div>

        <!-- Bootstrap 5 JS (Opcional) -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>


