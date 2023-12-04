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
import jakarta.ws.rs.core.MediaType;
import jakarta.ws.rs.core.Response;
import java.util.List;
import org.utl.dsm.galleto.controller.ControllerInventario;
import org.utl.dsm.galleto.model.Inventario;

/**
 *
 * @author gabog
 */
@Path("inventario")
public class InventarioRest {

    @Path("guardar")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response insertarInventario(@FormParam("datosInventario") @DefaultValue("") String datosInventario) {
        Gson gson = new Gson();
        Inventario inventario = new Inventario();
        inventario = gson.fromJson(datosInventario, Inventario.class);
        ControllerInventario objI = new ControllerInventario();
        String out = "";
        try {
            objI.insertInventario(inventario);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = gson.toJson(inventario);
        return Response.status(Response.Status.CREATED).entity(out).build();
    }

    @Path("getAll")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAllInventario(@FormParam("estatus") @DefaultValue("1") String estatus) {

        String out = "";
        Gson gson = new Gson();
        try {
            ControllerInventario objI = new ControllerInventario();
            List<Inventario> inventario;
            inventario = objI.getAllInventario(estatus);
            out = gson.toJson(inventario);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }

        return Response.status(Response.Status.OK).entity(out).build();

    }

    @Path("producir")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response producirInventario(@FormParam("idGalleta") @DefaultValue("") String idGalleta, @FormParam("tanda") @DefaultValue("")String tanda) {
        Gson gson = new Gson();
        ControllerInventario objI = new ControllerInventario();
        String out = "";
        try {
            objI.producirGalleta(idGalleta, tanda);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = """
              {"result":"Galleta producida"}
              """;
        return Response.status(Response.Status.CREATED).entity(out).build();

    }
    
    @Path("quitar")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response quitarInventario(@FormParam("idGalleta") @DefaultValue("") String idGalleta, @FormParam("cantidad") @DefaultValue("")String cantidad) {
        Gson gson = new Gson();
        ControllerInventario objI = new ControllerInventario();
        String out = "";
        try {
            objI.quitarGalleta(idGalleta, cantidad);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = """
              {"result":"Galleta producida"}
              """;
        return Response.status(Response.Status.CREATED).entity(out).build();

    }

    @Path("update")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response updateInventario(@FormParam("datosInventario") @DefaultValue("") String datosInventario) {
        Gson gson = new Gson();
        Inventario inventario = new Inventario();
        inventario = gson.fromJson(datosInventario, Inventario.class);
        ControllerInventario objI = new ControllerInventario();
        String out = "";
        try {
            objI.updateInventario(inventario);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = gson.toJson(inventario);
        return Response.status(Response.Status.CREATED).entity(out).build();
    }

    @Path("delete")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteInventario(@FormParam("idGalleta") @DefaultValue("") String idGalleta) {
        Gson gson = new Gson();
        ControllerInventario objI = new ControllerInventario();
        String out = "";
        try {
            objI.deleteInventario(idGalleta);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = """
              {"result":"Inventario eliminado"}
              """;
        return Response.status(Response.Status.CREATED).entity(out).build();
    }

    @Path("activate")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response activateInventario(@FormParam("idGalleta") @DefaultValue("") String idGalleta) {
        Gson gson = new Gson();
        ControllerInventario objI = new ControllerInventario();
        String out = "";
        try {
            objI.activeInventario(idGalleta);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = """
              {"result":"Inventario activado"}
              """;
        return Response.status(Response.Status.CREATED).entity(out).build();
    }

}
