<%-- 
    Document   : ingresarMaterial
    Created on : 11-29-2024, 10:19:19 PM
    Author     : jenni
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Ingreso de Materiales</title>
        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .sidebar {
                min-height: 100vh;
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
                                <a class="nav-link active bg-secondary text-white" href="ingresarMaterial.jsp">Ingresar Material</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="crearUsuario.jsp">Crear Usuario</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="adminLiquidarMulta.jsp">Liquidar Multa</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link text-white" href="adminDevolverMaterial.jsp">Devolver Material</a>
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
                        <h2>Ingreso de Materiales</h2>
                    </div>
                    
                    <!-- Botones para abrir modales -->
                    <div class="d-grid gap-2 d-md-block">
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ingresarLibroModal">Ingresar Libro</button>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ingresarRevistaModal">Ingresar Revista</button>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ingresarObraModal">Ingresar Obra</button>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ingresarCDModal">Ingresar CD</button>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ingresarTesisModal">Ingresar Tesis</button>
                        <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ingresarDocumentoModal">Ingresar Documento</button>
                    </div>

                    <!-- Modales para cada tipo de material -->

                    <!-- Modal: Ingresar Libro -->
                    <div class="modal fade" id="ingresarLibroModal" tabindex="-1" aria-labelledby="ingresarLibroModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ingresarLibroModalLabel">Ingresar Libro</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="tituloLibro" class="form-label">Título</label>
                                            <input type="text" class="form-control" id="tituloLibro" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="autorLibro" class="form-label">Autor</label>
                                            <input type="text" class="form-control" id="autorLibro" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="editorialLibro" class="form-label">Editorial</label>
                                            <input type="text" class="form-control" id="editorialLibro" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="isbnLibro" class="form-label">ISBN</label>
                                            <input type="text" class="form-control" id="isbnLibro" required>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Ingresar Libro</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal: Ingresar Revista -->
                    <div class="modal fade" id="ingresarRevistaModal" tabindex="-1" aria-labelledby="ingresarRevistaModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ingresarRevistaModalLabel">Ingresar Revista</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="tituloRevista" class="form-label">Título</label>
                                            <input type="text" class="form-control" id="tituloRevista" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="fechaPublicacionRevista" class="form-label">Fecha de Publicación</label>
                                            <input type="date" class="form-control" id="fechaPublicacionRevista" required>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Ingresar Revista</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal: Ingresar Obra -->
                    <div class="modal fade" id="ingresarObraModal" tabindex="-1" aria-labelledby="ingresarObraModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ingresarObraModalLabel">Ingresar Obra</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="tituloObra" class="form-label">Título</label>
                                            <input type="text" class="form-control" id="tituloObra" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="autorObra" class="form-label">Autor</label>
                                            <input type="text" class="form-control" id="autorObra" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="capitulosObra" class="form-label">Número de Capítulos</label>
                                            <input type="number" class="form-control" id="capitulosObra" required>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Ingresar Obra</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal: Ingresar CD -->
                    <div class="modal fade" id="ingresarCDModal" tabindex="-1" aria-labelledby="ingresarCDModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ingresarCDModalLabel">Ingresar CD</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="tituloCD" class="form-label">Título</label>
                                            <input type="text" class="form-control" id="tituloCD" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="artistaCD" class="form-label">Artista</label>
                                            <input type="text" class="form-control" id="artistaCD" required>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Ingresar CD</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal: Ingresar Tesis -->
                    <div class="modal fade" id="ingresarTesisModal" tabindex="-1" aria-labelledby="ingresarTesisModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ingresarTesisModalLabel">Ingresar Tesis</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="tituloTesis" class="form-label">Título</label>
                                            <input type="text" class="form-control" id="tituloTesis" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="facultadTesis" class="form-label">Facultad</label>
                                            <input type="text" class="form-control" id="facultadTesis" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="universidadTesis" class="form-label">Universidad</label>
                                            <input type="text" class="form-control" id="universidadTesis" required>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Ingresar Tesis</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Modal: Ingresar Documento -->
                    <div class="modal fade" id="ingresarDocumentoModal" tabindex="-1" aria-labelledby="ingresarDocumentoModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="ingresarDocumentoModalLabel">Ingresar Documento</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="mb-3">
                                            <label for="tituloDocumento" class="form-label">Título</label>
                                            <input type="text" class="form-control" id="tituloDocumento" required>
                                        </div>
                                        <div class="mb-3">
                                            <label for="tipoDocumento" class="form-label">Tipo de Documento</label>
                                            <input type="text" class="form-control" id="tipoDocumento" required>
                                        </div>
                                        <div class="text-center">
                                            <button type="submit" class="btn btn-primary">Ingresar Documento</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
        </div>

        <!-- Bootstrap JS & Popper.js -->
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
    </body>
</html>

