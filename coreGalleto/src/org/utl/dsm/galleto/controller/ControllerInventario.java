/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.utl.dsm.galleto.controller;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import org.utl.dsm.galleto.db.ConexionMySQL;
import org.utl.dsm.galleto.model.Inventario;

/**
 *
 * @author gabog
 */
public class ControllerInventario {
    
    public void insertInventario(Inventario inventarios) throws SQLException{     
        String query = "{call insertInventario(?,?,?)}";
        //conectarse a la base de datos
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        //preparar valores de retorno

        CallableStatement cstmt = conn.prepareCall(query);
        
        cstmt.setString(1, inventarios.getNombre());
        cstmt.setInt(2, inventarios.getCantidadActual());
        cstmt.setDouble(3, inventarios.getPrecioActual());
        
        cstmt.executeUpdate();
        
        cstmt.close();
        conn.close();
        conexion.close();
    }
    
    public String updateInventario(Inventario inventarios) throws SQLException {
        String query = "{CALL updateInventario(?,?,?,?)}";
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        CallableStatement cstmt = conn.prepareCall(query);
        
        cstmt.setString(1, inventarios.getNombre());
        cstmt.setInt(2, inventarios.getCantidadActual());
        cstmt.setDouble(3, inventarios.getPrecioActual());
        cstmt.setInt(4, inventarios.getIdGalleta());
        
        cstmt.executeUpdate();
        cstmt.close();
        conn.close();
        conexion.close();
        return "Inventario actualizado";
    }
    
    public String deleteInventario(String idGalleta) throws SQLException {
        String query = "{CALL eliminarInventario(?)}";
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        CallableStatement cstmt = conn.prepareCall(query);
        cstmt.setString(1, idGalleta);
        cstmt.executeUpdate();
        cstmt.close();
        conn.close();
        conexion.close();
        return "Inventario eliminado";
    }
    
    public String activeInventario(String idGalleta) throws SQLException {
        String query = "{CALL activarInventario(?)}";
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        CallableStatement cstmt = conn.prepareCall(query);
        cstmt.setString(1, idGalleta);
        cstmt.executeUpdate();
        cstmt.close();
        conn.close();
        conexion.close();
        return "Inventario activado";
    }
    
    public String producirGalleta(String idGalleta, String tanda) throws SQLException{     
        String query = "{call producirGalletas(?,?)}";
        //conectarse a la base de datos
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        //preparar valores de retorno

        CallableStatement cstmt = conn.prepareCall(query);
        
        cstmt.setString(1, idGalleta);
        cstmt.setString(2, tanda);
        
        cstmt.executeUpdate();
        
        cstmt.close();
        conn.close();
        conexion.close();
        return "Tanda producida";
    }
    
    public String quitarGalleta(String idGalleta, String cantidad) throws SQLException {
        String query = "{CALL quitarGalletas(?,?)}";
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        CallableStatement cstmt = conn.prepareCall(query);
        
        cstmt.setString(1, idGalleta);
        cstmt.setString(2, cantidad);
        
        cstmt.executeUpdate();
        cstmt.close();
        conn.close();
        conexion.close();
        return "Galletas quitadas de inventario";
    }
    
    public List<Inventario> getAllInventario (String filtro) throws SQLException{
        
        String query="SELECT * FROM vista_inventario WHERE estatus="+filtro+"";
        System.out.println(query);
        ConexionMySQL objConexion= new ConexionMySQL();
        Connection conn=objConexion.open();
        Statement stmt = conn.createStatement();
        PreparedStatement pstmt = conn.prepareStatement(query);
        List<Inventario> inventarios = new ArrayList<>();
        ResultSet rs= pstmt.executeQuery();
        while(rs.next()){
            Inventario in = new Inventario();
            
            in.setIdGalleta(rs.getInt("idGalleta"));
            in.setNombre(rs.getString("nombre"));
            in.setCantidadActual(rs.getInt("cantidadActual"));
            in.setPrecioActual(rs.getDouble("precioActual"));
            in.setEstatus(rs.getInt("estatus"));
            
            inventarios.add(in);
        }
        rs.close();
        pstmt.close();
        conn.close();
        return inventarios;
    }
    
}
