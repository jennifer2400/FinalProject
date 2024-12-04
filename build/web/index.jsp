<%-- 
    Document   : index
    Created on : 11-29-2024, 08:43:51 PM
    Author     : jenni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca - Inicio</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* Fondo de la página */
        body {
            background-image: url('img/ImagenCentral.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
        }

        /* Contenedor principal */
        .content-container {
            background: rgba(0, 0, 0, 0.85); /* Fondo oscuro translúcido */
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            max-width: 600px;
            width: 90%;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.8);
        }

        /* Encabezado principal */
        .content-container h1 {
            font-size: 3rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #00d1ff; /* Azul tecnológico */
        }

        /* Descripción */
        .content-container p {
            font-size: 1.2rem;
            color: #ddd;
            margin-bottom: 30px;
        }

        /* Botones */
        .content-container .btn {
            padding: 12px 20px;
            font-size: 1.2rem;
            border: none;
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
            background-color: #28a745; /* Verde brillante */
            color: #fff;
        }

        .content-container .btn-success:hover {
            background-color: #218838; /* Verde más oscuro */
        }

        /* Enlace de estilo */
        .content-container a {
            color: #00d1ff;
            text-decoration: none;
        }

        .content-container a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="content-container">
        <h1>Bienvenido a Biblioteca Amigos Don Bosco</h1>
        <p>Accede a nuestro catálogo, gestiona tus préstamos o explora los recursos disponibles.</p>
        
        <!-- Botones de acción -->
        <div class="d-grid gap-3">
            <button class="btn btn-primary" onclick="location.href='Login.jsp'">Iniciar Sesión</button>
            <button class="btn btn-success" onclick="location.href='consultasSinLoguear.jsp'">Explorar el Catálogo</button>
        </div>

        <!-- Enlace para volver al inicio si estás en otra sección -->
        <p class="mt-4">
            
        </p>
    </div>

    <!-- Bootstrap 5 JS (Opcional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>



