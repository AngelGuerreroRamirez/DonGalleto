/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.utl.dsm.galleto.model;

/**
 *
 * @author gabog
 */
public class Venta {
    private int idVenta;
    private String fecha;

    public Venta() {
    }

    public Venta(String fecha) {
        this.fecha = fecha;
    }

    public Venta(int idVenta, String fecha) {
        this.idVenta = idVenta;
        this.fecha = fecha;
    }

    public int getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(int idVenta) {
        this.idVenta = idVenta;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    @Override
    public String toString() {
        return "Venta{" + "idVenta=" + idVenta + ", fecha=" + fecha + '}';
    }
    
    
}
