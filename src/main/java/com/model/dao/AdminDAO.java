package com.model.dao;

import com.model.Admin;
import com.model.Admins;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

public class AdminDAO implements Serializable{
    private String filePath;
    private Admins admins;
    
    public AdminDAO(){  }

    public AdminDAO(String filePath, Admins admins) {
        this.filePath = filePath;
        this.admins = admins;
    }

    public String getFilePath() {
        return filePath;
    }

    public Admins getAdmins(){
        return this.admins;
    }

    public void setAdmins(Admins admins) {
        this.admins = admins;
    }
    
    public void setFilePath(String fileName) throws JAXBException, FileNotFoundException{
        this.filePath = fileName;
        JAXBContext jc = JAXBContext.newInstance(Admins.class);
        Unmarshaller um = jc.createUnmarshaller();
        FileInputStream fin = new FileInputStream(fileName);
        admins = (Admins) um.unmarshal(fin);
    }
    
    public void save(Admins admins, String filename) throws JAXBException, FileNotFoundException, IOException{
        this.admins = admins;
        this.filePath = filename;
        JAXBContext jc = JAXBContext.newInstance(Admins.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filename);
        m.marshal(admins, fout);
        m.marshal(admins, System.out);
        fout.close();
    }
    
    // Crud Operations
    public Admins read(String filename) throws JAXBException, FileNotFoundException{
        this.filePath = filename;
        JAXBContext jc = JAXBContext.newInstance(Admins.class);
        Unmarshaller um = jc.createUnmarshaller();
        FileInputStream fin = new FileInputStream(filename);
        admins = (Admins) um.unmarshal(fin);
        return admins;
    }
    
    public void update(Admins admins, Admin other) throws JAXBException, IOException{
        this.admins = admins;
        this.admins.remove(other);
        save(this.admins, filePath);
        this.admins.add(other);
        save(this.admins, filePath);
    }
    
    public void delete(Admins admins,Admin adsmin) throws JAXBException, IOException{
        this.admins = admins;
        this.admins.remove(adsmin);
        save(this.admins, filePath);
    }
}