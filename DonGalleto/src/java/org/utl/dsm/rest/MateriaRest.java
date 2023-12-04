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
import org.utl.dsm.galleto.controller.ControllerMateria;
import org.utl.dsm.galleto.model.Materia;

/**
 *
 * @author gabog
 */
@Path("materia")
public class MateriaRest {

    @Path("guardar")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response insertarMateria(@FormParam("datosMateria") @DefaultValue("") String datosMateria) {
        Gson gson = new Gson();
        Materia materia = new Materia();
        materia = gson.fromJson(datosMateria, Materia.class);
        ControllerMateria objM = new ControllerMateria();
        String out = "";
        try {
            objM.insertMateria(materia);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = gson.toJson(materia);
        return Response.status(Response.Status.CREATED).entity(out).build();
    }

    @Path("getAllMateria")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response getAllMateria(@FormParam("estatus") @DefaultValue("1") String estatus) {

        String out = "";
        Gson gson = new Gson();
        try {
            ControllerMateria objM = new ControllerMateria();
            List<Materia> materia;
            materia = objM.getAllMateria(estatus);
            out = gson.toJson(materia);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }

        return Response.status(Response.Status.OK).entity(out).build();

    }

    @Path("updateMateria")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response updateMateria(@FormParam("datosMateria") @DefaultValue("") String datosMateria) {
        Gson gson = new Gson();
        Materia materia = new Materia();
        materia = gson.fromJson(datosMateria, Materia.class);
        ControllerMateria objM = new ControllerMateria();
        String out = "";
        try {
            objM.updateMateria(materia);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = gson.toJson(materia);
        return Response.status(Response.Status.CREATED).entity(out).build();
    }

    @Path("delete")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response deleteMateria(@FormParam("idMateria") @DefaultValue("") String idMateria) {
        Gson gson = new Gson();
        ControllerMateria objM = new ControllerMateria();
        String out = "";
        try {
            objM.deleteMateria(idMateria);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = """
              {"result":"Materia eliminada"}
              """;
        return Response.status(Response.Status.CREATED).entity(out).build();
    }

    @Path("activate")
    @POST
    @Produces(MediaType.APPLICATION_JSON)
    public Response activateMateria(@FormParam("idMateria") @DefaultValue("") String idMateria) {
        Gson gson = new Gson();
        ControllerMateria objM = new ControllerMateria();
        String out = "";
        try {
            objM.activateMateria(idMateria);
        } catch (Exception ex) {
            out = "{\"error\":" + ex.toString() + "}";
            return Response.status(Response.Status.BAD_REQUEST).entity(out).build();
        }
        out = """
              {"result":"Materia activada"}
              """;
        return Response.status(Response.Status.CREATED).entity(out).build();
    }
}
