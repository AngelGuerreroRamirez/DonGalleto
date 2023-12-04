/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.utl.dsm.galleto.model;

import java.util.List;

/**
 *
 * @author gabog
 */
public class DetalleVentaGalleta {
    private Venta venta;
    private List<VentaGalleta> listVG;

    public DetalleVentaGalleta() {
    }

    public DetalleVentaGalleta(Venta venta, List<VentaGalleta> listVG) {
        this.venta = venta;
        this.listVG = listVG;
    }

    public Venta getVenta() {
        return venta;
    }

    public void setVenta(Venta venta) {
        this.venta = venta;
    }

    public List<VentaGalleta> getListVG() {
        return listVG;
    }

    public void setListVG(List<VentaGalleta> listVG) {
        this.listVG = listVG;
    }

    @Override
    public String toString() {
        String mensaje = "";
        for(int i = 0; i < listVG.size(); i++){
            mensaje = listVG.get(i).toString();
        }
        return "DetalleVentaGalleta{" + "venta=" + venta + ", listVG=" + listVG + '}';
    }
    
    
}
