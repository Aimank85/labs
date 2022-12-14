/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author 236333
 */
public class Users {
    private List<User> users = new ArrayList<>();

    public Users() {
    }
    
    public void add(User user){
        this.users.add(user);
    }
    
    public User user(String email, String password){
        return this.users.stream().filter(user -> user.login(email, password)).findAny().orElse(null);
    }
    
    public User user(String email){
        return this.users.stream().filter(user -> user.match(email)).findAny().orElse(null);
    }
    
    public User user(int ID){
        return this.users.stream().filter(user -> user.match(ID)).findAny().orElse(null);
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
    
    public void delete(int ID){
        List<User> temp = new ArrayList();
        User toDelete = user(ID);
        
        if(toDelete != null){
            temp.add(toDelete);
        }
        
        users.removeAll(temp);
    }
}
