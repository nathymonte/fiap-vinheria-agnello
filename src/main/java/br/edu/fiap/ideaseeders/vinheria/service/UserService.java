package br.edu.fiap.ideaseeders.vinheria.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import br.edu.fiap.ideaseeders.vinheria.dao.UserDAO;
import br.edu.fiap.ideaseeders.vinheria.model.User;

public class UserService {
    
    private final UserDAO userDAO;
    
    public UserService() {
        this.userDAO = new UserDAO();
    }
    
    public User register(String nome, String email, String senha, String cpf, 
                         String dataNascimento, String telefone, boolean receberNewsletter) {
        
        try {
            if (userDAO.findByEmail(email) != null) {
                return null;
            }
            
            LocalDate birthDate = LocalDate.parse(dataNascimento, DateTimeFormatter.ISO_DATE);
            
            User user = new User(nome, email, senha, cpf, birthDate, telefone, receberNewsletter);
            
            return userDAO.create(user);
            
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public User login(String email, String senha) {
        try {
            return userDAO.authenticate(email, senha);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
    
    public boolean updateUser(User user) {
        try {
            return userDAO.update(user);
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
    public User findByEmail(String email) {
        try {
            return userDAO.findByEmail(email);
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
} 