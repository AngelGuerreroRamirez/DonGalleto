/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.utl.dsm.galleto.model;

/**
 *
 * @author gabog
 */
public class Inventario {
    private int idGalleta;
    private String nombre;
    private int cantidadActual;
    private double precioActual;
    private int estatus;

    public Inventario() {
    }

    public Inventario(String nombre, int cantidadActual, double precioActual, int estatus) {
        this.nombre = nombre;
        this.cantidadActual = cantidadActual;
        this.precioActual = precioActual;
        this.estatus = estatus;
    }

    public Inventario(int idGalleta, String nombre, int cantidadActual, double precioActual, int estatus) {
        this.idGalleta = idGalleta;
        this.nombre = nombre;
        this.cantidadActual = cantidadActual;
        this.precioActual = precioActual;
        this.estatus = estatus;
    }

    public int getIdGalleta() {
        return idGalleta;
    }

    public void setIdGalleta(int idGalleta) {
        this.idGalleta = idGalleta;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getCantidadActual() {
        return cantidadActual;
    }

    public void setCantidadActual(int cantidadActual) {
        this.cantidadActual = cantidadActual;
    }

    public double getPrecioActual() {
        return precioActual;
    }

    public void setPrecioActual(double precioActual) {
        this.precioActual = precioActual;
    }

    public int getEstatus() {
        return estatus;
    }

    public void setEstatus(int estatus) {
        this.estatus = estatus;
    }

    @Override
    public String toString() {
        return "Inventario{" + "idGalleta=" + idGalleta + ", nombre=" + nombre + ", cantidadActual=" + cantidadActual + ", precioActual=" + precioActual + ", estatus=" + estatus + '}';
    }

    
    
}
