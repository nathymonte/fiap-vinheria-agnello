package br.edu.fiap.ideaseeders.vinheria.dao;

import org.mindrot.jbcrypt.BCrypt;

import br.edu.fiap.ideaseeders.vinheria.model.User;
import br.edu.fiap.ideaseeders.vinheria.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDAO {
    
    private final DatabaseConnection dbConnection;
    
    public UserDAO() {
        this.dbConnection = DatabaseConnection.getInstance();
    }
    
    public User create(User user) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            conn = dbConnection.getConnection();
            
            String hashedPassword = BCrypt.hashpw(user.getSenha(), BCrypt.gensalt());
            
            String sql = "INSERT INTO users (nome, email, senha, cpf, data_nascimento, " +
                    "telefone, receber_newsletter, data_cadastro) " +
                    "VALUES (?, ?, ?, ?, ?, ?, ?, ?) RETURNING id";
            
            pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, user.getNome());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, hashedPassword);
            pstmt.setString(4, user.getCpf());
            pstmt.setDate(5, Date.valueOf(user.getDataNascimento()));
            pstmt.setString(6, user.getTelefone());
            pstmt.setBoolean(7, user.isReceberNewsletter());
            pstmt.setDate(8, Date.valueOf(user.getDataCadastro()));
            
            int affectedRows = pstmt.executeUpdate();
            
            if (affectedRows > 0) {
                rs = pstmt.getGeneratedKeys();
                if (rs.next()) {
                    user.setId(rs.getLong(1));
                }
            }
            
            return user;
            
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                if (rs != null) rs.close();
                dbConnection.closeResources(conn, null, pstmt);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public User findByEmail(String email) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        
        try {
            conn = dbConnection.getConnection();
            
            String sql = "SELECT * FROM users WHERE email = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, email);
            
            rs = pstmt.executeQuery();
            
            if (rs.next()) {
                return extractUserFromResultSet(rs);
            }
            
            return null;
            
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        } finally {
            try {
                if (rs != null) rs.close();
                dbConnection.closeResources(conn, null, pstmt);
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    
    public User authenticate(String email, String senha) {
        User user = findByEmail(email);
        
        if (user != null) {
            if (BCrypt.checkpw(senha, user.getSenha())) {
                return user;
            }
        }
        
        return null;
    }
    
    public boolean update(User user) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            conn = dbConnection.getConnection();
            
            String sql = "UPDATE users SET " +
                    "nome = ?, " +
                    "email = ?, " +
                    "cpf = ?, " +
                    "data_nascimento = ?, " +
                    "telefone = ?, " +
                    "receber_newsletter = ? " +
                    "WHERE id = ?";
            
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user.getNome());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getCpf());
            pstmt.setDate(4, Date.valueOf(user.getDataNascimento()));
            pstmt.setString(5, user.getTelefone());
            pstmt.setBoolean(6, user.isReceberNewsletter());
            pstmt.setLong(7, user.getId());
            
            int affectedRows = pstmt.executeUpdate();
            
            return affectedRows > 0;
            
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        } finally {
            dbConnection.closeResources(conn, null, pstmt);
        }
    }
    
    private User extractUserFromResultSet(ResultSet rs) throws SQLException {
        User user = new User();
        user.setId(rs.getLong("id"));
        user.setNome(rs.getString("nome"));
        user.setEmail(rs.getString("email"));
        user.setSenha(rs.getString("senha"));
        user.setCpf(rs.getString("cpf"));
        user.setDataNascimento(rs.getDate("data_nascimento").toLocalDate());
        user.setTelefone(rs.getString("telefone"));
        user.setReceberNewsletter(rs.getBoolean("receber_newsletter"));
        user.setDataCadastro(rs.getDate("data_cadastro").toLocalDate());
        
        return user;
    }
} 