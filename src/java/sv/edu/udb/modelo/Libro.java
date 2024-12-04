/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.edu.udb.modelo;

import java.sql.Date;

/**
 *
 * @author jenni
 */
// Clase hija: Libro
public class Libro extends Material {
    private String isbn;
    private String editorial;
    
    // Constructor, getters y setters
    public Libro(String titulo, String autor, int unidadesDisponibles, String ubicacion, Date fechaCompra, String isbn, String editorial) {
        super(titulo, autor, unidadesDisponibles, ubicacion, fechaCompra);
        this.isbn = isbn;
        this.editorial = editorial;
    }

    public String getIsbn() {
        return isbn;
    }

    public String getEditorial() {
        return editorial;
    }
}
