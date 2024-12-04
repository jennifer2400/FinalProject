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
public class Revista extends Material {
    private String editorial;
    private Date fechaPublicacion;

    public Revista(String titulo, String autor, int unidadesDisponibles, String ubicacion, Date fechaCompra, Date fechaPublicacion) {
        super(titulo, autor, unidadesDisponibles, ubicacion, fechaCompra);
        this.fechaPublicacion = fechaPublicacion;
        this.editorial = editorial;
    }

    public Date getFechaPublicacion() {
        return fechaPublicacion;
    }
}
