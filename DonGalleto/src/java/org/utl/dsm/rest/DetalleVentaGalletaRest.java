/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package org.utl.dsm.rest;

import com.google.gson.Gson;
import jakarta.ws.rs.DefaultValue;
import jakarta.ws.rs.FormParam;
import jakarta.ws.rs.POST;
import jakarta.ws.rs.Path;
import jakarta.ws.rs.Produces;
import jakarta.ws.rs.core.Application;
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import org.utl.dsm.galleto.controller.ControllerVentaGalleta;
import org.utl.dsm.galleto.model.DetalleVentaGalleta;

/**
 *
 * @author gabog
 */
@Path("ventaGalleta")
public class DetalleVentaGalletaRest extends Application{
    
    @Path("venta")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response generarVenta(@FormParam("datosVenta") @DefaultValue("") String datosVenta){
        Gson gson = new Gson();
        DetalleVentaGalleta dvgalleta = new DetalleVentaGalleta();
        
        dvgalleta = gson.fromJson(datosVenta, DetalleVentaGalleta.class);
        
        ControllerVentaGalleta cvg = new ControllerVentaGalleta();
        
        boolean r = cvg.generarVentaGalleta(dvgalleta);
        String out = "";
        
        if(r){
            out = """
                  {"result":"Venta generada con exito"}
                  """;
        }else{
            out = """
                  {"error":"Venta fallida"}
                  """;
        }
        
        return Response.status(Response.Status.OK).entity(out).build();
    }
}
