package com.rest;

import com.model.User;
import com.model.Users;
import com.model.dao.UserDAO;
import java.io.FileNotFoundException;
import java.io.IOException;
import javax.servlet.ServletContext;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.xml.bind.JAXBException;

@Path("userapi")
public class UserService {
    @Context
    private ServletContext application;
    
    private UserDAO getUserDAO() throws JAXBException, FileNotFoundException{
        synchronized(application){
            UserDAO userDAO = (UserDAO) application.getAttribute("userDAO");
            if(userDAO == null){
                userDAO = new UserDAO();
                userDAO.setFilePath(application.getRealPath("/WEB-INF/users.xml"));
                application.setAttribute("userDAO", userDAO);
            }
            return userDAO;
        }        
    }
    
    @GET
    @Path("hello")
    @Produces(MediaType.TEXT_PLAIN)
    public String hello() {
        return "Welcome to User Service";
    }
    
    @GET
    @Path("getusers")
    @Produces(MediaType.APPLICATION_XML)
    public Users getAllUsers() throws JAXBException, FileNotFoundException{
        return getUserDAO().getUsers();
    }
    
    @GET
    @Path("user/ID/{ID}")
    @Produces(MediaType.APPLICATION_XML)
    public User getUserByID(@PathParam("ID") int ID) throws JAXBException, FileNotFoundException{
        return getUserDAO().getUsers().user(ID);
    }
    
    @GET
    @Path("user/delete/{ID}")
    @Produces(MediaType.TEXT_PLAIN)
    public String deleteUser(@PathParam("ID") int ID) throws JAXBException, FileNotFoundException, IOException{
        UserDAO userDAO = getUserDAO();
        Users users = userDAO.getUsers();
        User user = users.user(ID);
        userDAO.delete(users, user);
        return "<success> user deleted successfully</success>";
    }
    
    @GET
    @Path("adduser")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Response addUser() throws JAXBException, FileNotFoundException{
        User user = new User("David", "dave@example.com", "Newrest123", "2000-02-02");
        UserDAO userDAO = getUserDAO();
        Users users = userDAO.getUsers();
        users.add(user);
        userDAO.marshal(users);
        return Response.status(200).entity(user).build();
    }
    
    @GET
    @Path("update/{ID}")
    @Produces({MediaType.APPLICATION_XML, MediaType.APPLICATION_JSON})
    public Response updateUser(@PathParam("ID") int ID) throws JAXBException, FileNotFoundException{
        UserDAO userDAO = getUserDAO();
        Users users = userDAO.getUsers();
        User user = users.user(ID);
        user.setPassword("Helloo123");
        userDAO.marshal(users);
        return Response.status(200).entity(user).build();
    }
    
    
}
