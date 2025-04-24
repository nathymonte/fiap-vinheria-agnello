package br.edu.fiap.ideaseeders.vinheria.util;

import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseConnection {
    private static final String URL = "jdbc:postgresql://postgres:5432/vinheria_agnello";
    private static final String USER = "postgres";
    private static final String PASSWORD = "postgres";
    
    private static DatabaseConnection instance;
    
    private DatabaseConnection() {
        initializeDatabase();
    }
    
    public static synchronized DatabaseConnection getInstance() {
        if (instance == null) {
            instance = new DatabaseConnection();
        }
        return instance;
    }
    
    public Connection getConnection() throws SQLException {
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection(URL, USER, PASSWORD);
        } catch (ClassNotFoundException e) {
            throw new SQLException("PostgreSQL JDBC Driver not found", e);
        }
    }
    
    private void initializeDatabase() {
        try (Connection conn = getConnection();
             Statement stmt = conn.createStatement()) {
            
            String createUsersTable = 
                "CREATE TABLE IF NOT EXISTS users (" +
                    "id SERIAL PRIMARY KEY, " +
                    "nome VARCHAR(100) NOT NULL, " +
                    "email VARCHAR(100) NOT NULL UNIQUE, " +
                    "senha VARCHAR(255) NOT NULL, " +
                    "cpf VARCHAR(14) NOT NULL UNIQUE, " +
                    "data_nascimento DATE NOT NULL, " +
                    "telefone VARCHAR(20), " +
                    "receber_newsletter BOOLEAN DEFAULT FALSE, " +
                    "data_cadastro DATE NOT NULL" +
                ")";
            
            stmt.execute(createUsersTable);
            
            String createProductsTable = 
                "CREATE TABLE IF NOT EXISTS products (" +
                    "id SERIAL PRIMARY KEY, " +
                    "name VARCHAR(100) NOT NULL, " +
                    "type VARCHAR(20) NOT NULL, " +
                    "country VARCHAR(50) NOT NULL, " +
                    "image_path VARCHAR(255) NOT NULL, " +
                    "flag_path VARCHAR(255) NOT NULL, " +
                    "price DECIMAL(10, 2) NOT NULL" +
                ")";
            
            stmt.execute(createProductsTable);
            
            ResultSet rs = stmt.executeQuery("SELECT COUNT(*) FROM products");
            rs.next();
            int productCount = rs.getInt(1);
            
            if (productCount == 0) {
                initializeProducts(conn);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    
    private void initializeProducts(Connection conn) throws SQLException {
        insertWine(conn, "VEGA SICILIA", "TINTO", "Itália", "resources/img/bottle1.png", "resources/img/italy.png", new BigDecimal("5300.00"));
        insertWine(conn, "CHATEAU MOUTON", "TINTO", "França", "resources/img/bottle1.png", "resources/img/france.png", new BigDecimal("8800.00"));
        insertWine(conn, "SASSICAIA", "TINTO", "Itália", "resources/img/bottle1.png", "resources/img/italy.png", new BigDecimal("6000.00"));
        insertWine(conn, "PENFOLDS GRANGE", "TINTO", "Austrália", "resources/img/bottle1.png", "resources/img/australia.png", new BigDecimal("900.00"));
        
        insertWine(conn, "CHATEAU D'YQUEM", "BRANCO", "França", "resources/img/bottle2.png", "resources/img/france.png", new BigDecimal("3000.00"));
        insertWine(conn, "TIBERIO PECORINO", "BRANCO", "França", "resources/img/bottle2.png", "resources/img/france.png", new BigDecimal("130.00"));
        insertWine(conn, "DOMAINE DE LA ROMANEE-CONTI", "BRANCO", "Portugal", "resources/img/bottle2.png", "resources/img/portugal.png", new BigDecimal("25000.00"));
        insertWine(conn, "ANSELMO MENDES ALVERINHO", "BRANCO", "Itália", "resources/img/bottle2.png", "resources/img/italy.png", new BigDecimal("100.00"));
        
        insertWine(conn, "CHATEAU D'ESCLANS GARRUS ROSÉ", "ROSE", "França", "resources/img/bottle3.png", "resources/img/france.png", new BigDecimal("800.00"));
        insertWine(conn, "CHATEAU MINUTY", "ROSE", "França", "resources/img/bottle3.png", "resources/img/france.png", new BigDecimal("120.00"));
        insertWine(conn, "WHISPERING ANGEL", "ROSE", "França", "resources/img/bottle3.png", "resources/img/france.png", new BigDecimal("60.00"));
        insertWine(conn, "DOMAINES OTT CHATEAU ROMASSAN", "ROSE", "França", "resources/img/bottle3.png", "resources/img/france.png", new BigDecimal("85.00"));
        
        insertWine(conn, "LOUIS ROEDERER CRISTAL", "ESPUMANTE", "França", "resources/img/bottle4.png", "resources/img/france.png", new BigDecimal("3000.00"));
        insertWine(conn, "DOM PERIGNON P2", "ESPUMANTE", "França", "resources/img/bottle4.png", "resources/img/france.png", new BigDecimal("1900.00"));
        insertWine(conn, "BOLLINER DE LA GRANDE ANNE", "ESPUMANTE", "França", "resources/img/bottle4.png", "resources/img/france.png", new BigDecimal("750.00"));
        insertWine(conn, "KRUG GRANDE CRUVEE", "ESPUMANTE", "França", "resources/img/bottle4.png", "resources/img/france.png", new BigDecimal("1000.00"));
    }
    
    private void insertWine(Connection conn, String name, String type, String country, 
                           String imagePath, String flagPath, BigDecimal price) throws SQLException {
        String sql = "INSERT INTO products (name, type, country, image_path, flag_path, price) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement pstmt = conn.prepareStatement(sql)) {
            pstmt.setString(1, name);
            pstmt.setString(2, type);
            pstmt.setString(3, country);
            pstmt.setString(4, imagePath);
            pstmt.setString(5, flagPath);
            pstmt.setBigDecimal(6, price);
            pstmt.executeUpdate();
        }
    }
    
    public void closeResources(Connection conn, Statement stmt, PreparedStatement pstmt) {
        try {
            if (stmt != null) stmt.close();
            if (pstmt != null) pstmt.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
} 