/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.utl.dsm.galleto.model;

/**
 *
 * @author gabog
 */
public class VentaGalleta {
    private Inventario inventario;
    private double moneda;
    private double gramaje;
    private int pieza;
    private double cajaMedio;
    private double cajaKilo;
    private double total;

    public VentaGalleta() {
    }

    public VentaGalleta(Inventario inventario, double moneda, double gramaje, int pieza, double cajaMedio, double cajaKilo, double total) {
        this.inventario = inventario;
        this.moneda = moneda;
        this.gramaje = gramaje;
        this.pieza = pieza;
        this.cajaMedio = cajaMedio;
        this.cajaKilo = cajaKilo;
        this.total = total;
    }

    public Inventario getInventario() {
        return inventario;
    }

    public void setInventario(Inventario inventario) {
        this.inventario = inventario;
    }

    public double getMoneda() {
        return moneda;
    }

    public void setMoneda(double moneda) {
        this.moneda = moneda;
    }

    public double getGramaje() {
        return gramaje;
    }

    public void setGramaje(double gramaje) {
        this.gramaje = gramaje;
    }

    public int getPieza() {
        return pieza;
    }

    public void setPieza(int pieza) {
        this.pieza = pieza;
    }

    public double getCajaMedio() {
        return cajaMedio;
    }

    public void setCajaMedio(double cajaMedio) {
        this.cajaMedio = cajaMedio;
    }

    public double getCajaKilo() {
        return cajaKilo;
    }

    public void setCajaKilo(double cajaKilo) {
        this.cajaKilo = cajaKilo;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "VentaGalleta{" + "inventario=" + inventario + ", moneda=" + moneda + ", gramaje=" + gramaje + ", pieza=" + pieza + ", cajaMedio=" + cajaMedio + ", cajaKilo=" + cajaKilo + ", total=" + total + '}';
    }

    
}
