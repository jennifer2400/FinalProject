<%-- 
    Document   : Login
    Created on : 11-29-2024, 10:28:19 PM
    Author     : jenni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Biblioteca</title>
    
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <style>
        /* Estilo del fondo */
        body {
            background-image: url('img/FontLogin.png');
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            display: flex;
            align-items: center;
            justify-content: flex-start;
        }

        /* Contenedor del formulario */
        .login-container {
            background: rgba(0, 0, 0, 0.85); /* Fondo oscuro translúcido */
            width: 100%;
            max-width: 400px;
            padding: 30px;
            border-radius: 10px;
            margin-left: 50px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.7);
            color: #fff; /* Texto blanco */
        }

        /* Encabezado del formulario */
        .login-container h1 {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 20px;
            color: #00d1ff; /* Azul tecnológico */
        }

        /* Estilo de los campos */
        .login-container label {
            color: #ddd; /* Texto más claro */
        }

        .login-container .form-control {
            background-color: rgba(255, 255, 255, 0.1); /* Fondo translúcido */
            color: #fff;
            border: 1px solid #555;
        }

        .login-container .form-control:focus {
            background-color: rgba(255, 255, 255, 0.15);
            border-color: #00d1ff; /* Azul al enfocar */
            box-shadow: none;
        }

        /* Botón llamativo */
        .login-container .btn-primary {
            background-color: #00d1ff; /* Azul tecnológico */
            border: none;
        }

        .login-container .btn-primary:hover {
            background-color: #009ec3; /* Azul más oscuro */
        }

        /* Estilo del enlace */
        .login-container a {
            color: #00d1ff;
            text-decoration: none;
        }

        .login-container a:hover {
            text-decoration: underline;
        }

        /* Enlace de volver */
        .volver {
            margin-top: 20px;
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Contenedor del formulario -->
    <div class="login-container">
        <h1>Iniciar Sesión</h1>
        <p class="text-center">Bienvenido, por favor ingresa tus credenciales.</p>
        
        <!-- Formulario de inicio de sesión -->
        <form action="LoginServlet" method="POST">
            <div class="mb-3">
                <label for="email" class="form-label">Correo Electrónico</label>
                <input type="email" class="form-control" id="email" name="email" placeholder="Ingresa tu correo" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Contraseña</label>
                <input type="password" class="form-control" id="password" name="password" placeholder="Ingresa tu contraseña" required>
            </div>
            <div class="form-check mb-3">
                <input class="form-check-input" type="checkbox" id="rememberMe" name="rememberMe">
                <label class="form-check-label" for="rememberMe">Recuérdame</label>
            </div>
            <button type="submit" class="btn btn-primary w-100">Iniciar Sesión</button>
        </form>
        
        <p class="mt-3 text-center"><a href="recuperarPassword.jsp">¿Olvidaste tu contraseña?</a></p>
        <p class="mt-3 text-center"><a href="menuAdmin.jsp">menuadmin</a></p>
        <!-- Enlace para volver a la página de inicio -->
        <div class="volver">
            <a href="index.jsp">Volver a la página de inicio</a>
        </div>
    </div>

    <!-- Bootstrap 5 JS (Opcional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>





