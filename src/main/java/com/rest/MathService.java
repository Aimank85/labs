package com.rest;

import com.model.Circle;
import com.model.Maths;
import com.model.Rectangle;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

/**
 *
 * @author 236351
 */
@Path("mathapi")
public class MathService {

    public MathService() {
    }

    @GET
    @Path("hello")
    @Produces(MediaType.TEXT_PLAIN)
    public String hello() {
        return "Welcome to Math Service";
    }

    @GET
    @Path("math/{N}")
    @Produces(MediaType.APPLICATION_XML)
    public Maths values(@PathParam("N") int N) {
        return new Maths(N);
    }

    @GET
    @Path("radius/{r}")
    @Produces(MediaType.APPLICATION_XML)
    public Circle circles(@PathParam("r") int r) {
        return new Circle(r);
    }

    @GET
    @Path("rectangle")
    @Produces(MediaType.APPLICATION_XML)
    public Rectangle rect(@QueryParam("w") int w, @QueryParam("h") int h) {
        return new Rectangle(w, h);
    }
}
