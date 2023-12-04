/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.utl.dsm.galleto.controller;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.utl.dsm.galleto.db.ConexionMySQL;
import org.utl.dsm.galleto.model.DetalleVentaGalleta;

/**
 *
 * @author gabog
 */
public class ControllerVentaGalleta {
    public boolean generarVentaGalleta(DetalleVentaGalleta dvg) {

        boolean r = false;
        ConexionMySQL conMysql = new ConexionMySQL();
        Connection conn = conMysql.open();
        Statement stmt = null;
        ResultSet rs = null;

        try {
            conn.setAutoCommit(r);
            stmt = conn.createStatement();
            String query1 = "INSERT INTO venta (fecha) VALUES (curdate());";
            stmt.execute(query1);

            String query2 = "SELECT LAST_INSERT_ID();";
            rs = stmt.executeQuery(query2);

            if (rs.next()) {
                dvg.getVenta().setIdVenta(rs.getInt(1));
            }

            for (int i = 0; i < dvg.getListVG().size(); i++) {
                String query3 = "INSERT INTO ventaGalleta VALUES (" + dvg.getVenta().getIdVenta() + " , " 
                        + dvg.getListVG().get(i).getInventario().getIdGalleta() + ", " 
                        + dvg.getListVG().get(i).getMoneda() + ", " 
                        + dvg.getListVG().get(i).getGramaje() + ", "  
                        + dvg.getListVG().get(i).getPieza() + ", "
                        + dvg.getListVG().get(i).getCajaMedio() + ", "  
                        + dvg.getListVG().get(i).getCajaKilo() + ", "  
                        + dvg.getListVG().get(i).getTotal() + ")";
                stmt.execute(query3);
            }
            
            conn.commit();
            conn.setAutoCommit(true);
            
            rs.close();
            stmt.close();
            conn.close();
            conMysql.close();
            
            r = true;
        } catch (SQLException ex) {
            Logger.getLogger(ControllerVentaGalleta.class.getName()).log(Level.SEVERE, null, ex);
            try {
                conn.rollback();
                conn.setAutoCommit(true);
                conn.close();
                conMysql.close();
                
                r = false;
            } catch (SQLException e) {
                Logger.getLogger(ControllerVentaGalleta.class.getName()).log(Level.SEVERE,null,e);
            }
            
            r = false;
        }
        
        return r;
    }

}
