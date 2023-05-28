/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.proyecto.modelo;

/**
 *
 * @author tomen
 */
public class Materia {

    @Override
    public String toString() {
        return "Materia{" + "clave=" + clave + ", nombre_Materia=" + nombre_Materia + '}';
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getNombre_Materia() {
        return nombre_Materia;
    }

    public void setNombre_Materia(String nombre_Materia) {
        this.nombre_Materia = nombre_Materia;
    }

    public Materia(String clave, String nombre_Materia) {
        this.clave = clave;
        this.nombre_Materia = nombre_Materia;
    }

    public Materia() {
    }
private  String  clave ;
private  String  nombre_Materia;
}
