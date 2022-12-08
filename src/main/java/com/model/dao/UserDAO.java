package com.model.dao;

import com.model.User;
import com.model.Users;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.Serializable;
import javax.xml.bind.JAXBContext;
import javax.xml.bind.JAXBException;
import javax.xml.bind.Marshaller;
import javax.xml.bind.Unmarshaller;

public class UserDAO implements Serializable{
    private String filePath;
    private Users users;
    
    public UserDAO(){  }

    public UserDAO(String filePath, Users users) {
        this.filePath = filePath;
        this.users = users;
    }

    public String getFilePath() {
        return filePath;
    }

    public Users getUsers(){
        return this.users;
    }

    public void setUsers(Users users) {
        this.users = users;
    }
    
    public void setFilePath(String fileName) throws JAXBException, FileNotFoundException{
        this.filePath = fileName;
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Unmarshaller um = jc.createUnmarshaller();
        FileInputStream fin = new FileInputStream(fileName);
        users = (Users) um.unmarshal(fin);
    }
    
    public void save(Users users, String filename) throws JAXBException, FileNotFoundException, IOException{
        this.users = users;
        this.filePath = filename;
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filename);
        m.marshal(users, fout);
        m.marshal(users, System.out);
        fout.close();
    }
    
    // Crud Operations
    public Users read(String filename) throws JAXBException, FileNotFoundException{
        this.filePath = filename;
        JAXBContext jc = JAXBContext.newInstance(Users.class);
        Unmarshaller um = jc.createUnmarshaller();
        FileInputStream fin = new FileInputStream(filename);
        users = (Users) um.unmarshal(fin);
        return users;
    }
    
    public void update(Users users, User other) throws JAXBException, IOException{
        this.users = users;
        this.users.remove(other);
        save(this.users, filePath);
        this.users.add(other);
        save(this.users, filePath);
    }
    
    public void delete(Users users,User user) throws JAXBException, IOException{
        this.users = users;
        this.users.remove(user);
        save(this.users, filePath);
    }
}