package br.edu.fiap.ideaseeders.vinheria.dao;

import br.edu.fiap.ideaseeders.vinheria.model.Product;
import br.edu.fiap.ideaseeders.vinheria.util.DatabaseConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
    private final DatabaseConnection dbConnection;

    public ProductDAO() {
        this.dbConnection = DatabaseConnection.getInstance();
    }

    public void save(Product product) {
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            conn = dbConnection.getConnection();
            String sql = "INSERT INTO products (name, type, country, image_path, flag_path, price) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            pstmt.setString(1, product.getName());
            pstmt.setString(2, product.getType());
            pstmt.setString(3, product.getCountry());
            pstmt.setString(4, product.getImagePath());
            pstmt.setString(5, product.getFlagPath());
            pstmt.setBigDecimal(6, product.getPrice());

            pstmt.executeUpdate();

            try (ResultSet generatedKeys = pstmt.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    product.setId(generatedKeys.getLong(1));
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            dbConnection.closeResources(conn, null, pstmt);
        }
    }

    public Product findById(Long id) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        Product product = null;

        try {
            conn = dbConnection.getConnection();
            String sql = "SELECT * FROM products WHERE id = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setLong(1, id);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                product = mapResultSetToProduct(rs);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            dbConnection.closeResources(conn, null, pstmt);
        }

        return product;
    }

    public List<Product> findByType(String type) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        List<Product> products = new ArrayList<>();

        try {
            conn = dbConnection.getConnection();
            String sql = "SELECT * FROM products WHERE type = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, type);
            rs = pstmt.executeQuery();

            while (rs.next()) {
                products.add(mapResultSetToProduct(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            dbConnection.closeResources(conn, null, pstmt);
        }

        return products;
    }

    public List<Product> findAll() {
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        List<Product> products = new ArrayList<>();

        try {
            conn = dbConnection.getConnection();
            stmt = conn.createStatement();
            String sql = "SELECT * FROM products";
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                products.add(mapResultSetToProduct(rs));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            dbConnection.closeResources(conn, stmt, null);
        }

        return products;
    }

    public boolean productExists(String name, String type) {
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
        boolean exists = false;

        try {
            conn = dbConnection.getConnection();
            String sql = "SELECT COUNT(*) FROM products WHERE name = ? AND type = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, type);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                exists = rs.getInt(1) > 0;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            dbConnection.closeResources(conn, null, pstmt);
        }

        return exists;
    }

    private Product mapResultSetToProduct(ResultSet rs) throws SQLException {
        Product product = new Product();
        product.setId(rs.getLong("id"));
        product.setName(rs.getString("name"));
        product.setType(rs.getString("type"));
        product.setCountry(rs.getString("country"));
        product.setImagePath(rs.getString("image_path"));
        product.setFlagPath(rs.getString("flag_path"));
        product.setPrice(rs.getBigDecimal("price"));
        return product;
    }
} 