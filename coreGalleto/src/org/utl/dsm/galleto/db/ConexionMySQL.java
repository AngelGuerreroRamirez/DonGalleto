/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.utl.dsm.galleto.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author gabog
 */
public class ConexionMySQL {
    Connection conn;
    
    public Connection open(){
     String usuario = "root";
     String password = "root";
     String url ="jdbc:mysql://localhost:3306/dongalleto?useSSL=false&useUnicode=true&characterEncoding=utf-8";
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(url, usuario, password);
    return conn;
    }catch (Exception e) {
            throw new Error("error al conectar bd con user "+usuario);
    } 
    } 
    
    public void close(){
    try{
    conn.close();
    } catch(Exception e){
        throw new Error("problema al cerrar la base de datos");
    }
    }

    @Override
    public String toString() {
        return "ConexionMySQL{" + "conn=" + conn + '}';
    }
}
