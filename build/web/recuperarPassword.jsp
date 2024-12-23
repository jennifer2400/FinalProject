<%-- 
    Document   : recuperarPassword
    Created on : 12-02-2024, 10:12:20 PM
    Author     : jenni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Restablecer Contraseña</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Fondo de la página */
        body {
            background-color: #f8f9fa; /* Fondo claro */
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: Arial, sans-serif;
        }

        /* Contenedor principal */
        .content-container {
            background: #1c1c1e; /* Fondo oscuro del cuadro */
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            max-width: 450px;
            width: 100%;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.5);
        }

        /* Encabezado */
        .content-container h1 {
            font-size: 1.8rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #ffffff; /* Texto blanco */
        }

        /* Botones */
        .content-container .btn {
            padding: 10px 20px;
            font-size: 1rem;
            border-radius: 5px;
        }

        .content-container .btn-primary {
            background-color: #00d1ff; /* Azul tecnológico */
            color: #fff;
        }

        .content-container .btn-primary:hover {
            background-color: #009ec3; /* Azul más oscuro */
        }

        .content-container .btn-success {
            background-color: #28a745; /* Verde tecnológico */
            color: #fff;
        }

        .content-container .btn-success:hover {
            background-color: #218838;
        }

        /* Enlace */
        .content-container a {
            color: #00d1ff;
            text-decoration: none;
            margin-top: 20px;
            display: inline-block;
        }

        .content-container a:hover {
            text-decoration: underline;
        }

        /* Campos de entrada */
        .form-control {
            background-color: rgba(255, 255, 255, 0.9);
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .text-start {
            text-align: left;
        }

        /* Estilo de etiquetas */
        label {
            color: #d1d1d1; /* Texto gris claro */
        }
    </style>
</head>
<body>
    <div class="content-container">
        <h1>Restablecer Contraseña</h1>

        <!-- Formulario -->
        <form method="post" action="RecuperarPasswordServlet">
            <!-- Campo Nombre de Usuario -->
            <div class="mb-4 text-start">
                <label for="username" class="form-label">Nombre de usuario:</label>
                <div class="d-flex">
                    <input type="text" id="username" name="username" class="form-control me-2" placeholder="Ingresa tu usuario" required>
                    <button type="button" class="btn btn-primary">Verificar</button>
                </div>
            </div>

            <!-- Nueva Contraseña -->
            <div class="mb-4 text-start">
                <label for="newPassword" class="form-label">Nueva contraseña:</label>
                <input type="password" id="newPassword" name="newPassword" class="form-control" placeholder="Nueva contraseña" required>
            </div>

            <!-- Confirmar Contraseña -->
            <div class="mb-4 text-start">
                <label for="confirmPassword" class="form-label">Confirmar contraseña:</label>
                <input type="password" id="confirmPassword" name="confirmPassword" class="form-control" placeholder="Confirma la contraseña" required>
            </div>

            <!-- Botón Cambiar Contraseña -->
            <button type="submit" class="btn btn-success w-100">Cambiar Contraseña</button>
        </form>

        <!-- Enlace para volver al login -->
        <a href="Login.jsp">Volver al Login</a>
    </div>

    <!-- Bootstrap 5 JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>




