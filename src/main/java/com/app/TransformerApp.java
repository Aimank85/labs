package com.app;

import com.model.Users;
import com.model.dao.UserDAO;
import com.model.dao.XmlTransformer;
import java.io.FileNotFoundException;
import javax.xml.bind.JAXBException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.stream.StreamResult;

public class TransformerApp {
    
    public static void main(String[] args) throws JAXBException, FileNotFoundException, TransformerException {
        XmlTransformer transformer = new XmlTransformer();
        String xslPath = "C:\\Users\\236351\\Documents\\github\\labs\\src\\main\\webapp\\xsl\\users.xsl";
        UserDAO userDAO = new UserDAO();
        String xmlPath = "C:\\Users\\236351\\Documents\\github\\labs\\src\\main\\webapp\\WEB-INF\\users.xml";
        userDAO.setFilePath(xmlPath);
        Users users = userDAO.getUsers();
        
        String output = "C:\\Users\\236351\\Documents\\github\\labs\\src\\main\\webapp\\output.html";

        transformer.transform(xslPath, users, new StreamResult(output));
    }
}

