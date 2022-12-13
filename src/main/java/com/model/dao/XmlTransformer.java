package com.model.dao;

import com.model.Users;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.util.JAXBSource;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

/**
 *
 * @author 236351
 */
public class XmlTransformer {
    public XmlTransformer() {}
    
    public void transform(String xslPath, Users users, StreamResult result) throws JAXBException, TransformerConfigurationException, TransformerException{
        TransformerFactory tf = TransformerFactory.newInstance();
        
        StreamSource xslSource = new StreamSource(xslPath);
        
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        JAXBSource xmlSource = new JAXBSource(jc, users);
        
        Transformer transformer = tf.newTransformer(xslSource);
        
        transformer.transform(xmlSource, result);
        StreamResult systemOutResult = new StreamResult(System.out);
        transformer.transform(xmlSource, systemOutResult);        
    }
    
    public void transform(String xslPath, String xmlPath, StreamResult result) throws TransformerConfigurationException, TransformerException{
        TransformerFactory tf = TransformerFactory.newInstance();
        
        StreamSource xslSource = new StreamSource(xslPath);
        
        StreamSource xmlSource = new StreamSource(xmlPath);
        
        Transformer transformer = tf.newTransformer(xslSource);
        
        transformer.transform(xmlSource, result);
        StreamResult systemOutResult = new StreamResult(System.out);
        transformer.transform(xmlSource, systemOutResult);   
    }
}
