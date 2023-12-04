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
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import org.utl.dsm.galleto.db.ConexionMySQL;
import org.utl.dsm.galleto.model.Materia;

/**
 *
 * @author gabog
 */
public class ControllerMateria {
    
    public void insertMateria(Materia materias) throws SQLException{
        
        String query = "{call insertMateria(?,?,?,?)}";
        //conectarse a la base de datos
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        //preparar valores de retorno

        CallableStatement cstmt = conn.prepareCall(query);
        
        cstmt.setString(1, materias.getNombre());
        cstmt.setString(2, materias.getDescripcion());
        cstmt.setDouble(3, materias.getPrecio());
        cstmt.setDouble(4, materias.getCantidad());
        
        cstmt.executeUpdate();
        
        cstmt.close();
        conn.close();
        conexion.close();
    }
    
    public String updateMateria(Materia materias) throws SQLException {
        String query = "{CALL updateMateria(?,?,?,?,?)}";
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        CallableStatement cstmt = conn.prepareCall(query);
        
        cstmt.setString(1, materias.getNombre());
        cstmt.setString(2, materias.getDescripcion());
        cstmt.setDouble(3, materias.getPrecio());
        cstmt.setDouble(4, materias.getCantidad());
        cstmt.setInt(5, materias.getIdMateria());
        
        cstmt.executeUpdate();
        cstmt.close();
        conn.close();
        conexion.close();
        return "Materia actualizada";
    }
    
    public String deleteMateria(String idMateria) throws SQLException {
        String query = "{CALL eliminarMateria(?)}";
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        CallableStatement cstmt = conn.prepareCall(query);
        cstmt.setString(1, idMateria);
        cstmt.executeUpdate();
        cstmt.close();
        conn.close();
        conexion.close();
        return "Materia eliminada";
    }
    
    public String activateMateria(String idMateria) throws SQLException {
        String query = "{CALL activarMateria(?)}";
        ConexionMySQL conexion = new ConexionMySQL();
        Connection conn = conexion.open();
        CallableStatement cstmt = conn.prepareCall(query);
        cstmt.setString(1, idMateria);
        cstmt.executeUpdate();
        cstmt.close();
        conn.close();
        conexion.close();
        return "Materia activada";
    }
    
    public List<Materia> getAllMateria (String filtro) throws SQLException{
        
        String query="SELECT * FROM vista_materia WHERE estatus="+filtro+"";
        System.out.println(query);
        ConexionMySQL objConexion= new ConexionMySQL();
        Connection conn=objConexion.open();
        Statement stmt = conn.createStatement();
        PreparedStatement pstmt = conn.prepareStatement(query);
        List<Materia> materias = new ArrayList<>();
        ResultSet rs= pstmt.executeQuery();
        while(rs.next()){
            Materia m = new Materia();
            
            m.setIdMateria(rs.getInt("idMateria"));
            m.setNombre(rs.getString("nombre"));
            m.setDescripcion(rs.getString("descripcion"));
            m.setPrecio(rs.getDouble("precio"));
            m.setCantidad(rs.getDouble("cantidad"));
            m.setEstatus(rs.getInt("estatus"));
            
            materias.add(m);
        }
        rs.close();
        pstmt.close();
        conn.close();
        return materias;
    }
}
