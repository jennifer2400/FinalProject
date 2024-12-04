/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sv.edu.udb.modelo;

/**
 *
 * @author jenni
 */

import java.sql.Date;

/**
 *
 * @author jenni
 */
// Clase padre: Material
public abstract class Material {
    private String titulo;
    private String autor;
    private int unidadesDisponibles;
    private String ubicacion;
    private Date fechaCompra;
    
    // Constructor, getters y setters
    public Material(String titulo, String autor, int unidadesDisponibles, String ubicacion, Date fechaCompra) {
        this.titulo = titulo;
        this.autor = autor;
        this.unidadesDisponibles = unidadesDisponibles;
        this.ubicacion = ubicacion;
        this.fechaCompra = fechaCompra;
    }

    public String getTitulo() {
        return titulo;
    }

    public String getAutor() {
        return autor;
    }

    public int getUnidadesDisponibles() {
        return unidadesDisponibles;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public Date getFechaCompra() {
        return fechaCompra;
    }
}
