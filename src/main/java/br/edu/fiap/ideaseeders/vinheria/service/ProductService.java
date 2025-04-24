package br.edu.fiap.ideaseeders.vinheria.service;

import br.edu.fiap.ideaseeders.vinheria.dao.ProductDAO;
import br.edu.fiap.ideaseeders.vinheria.model.Product;

import java.util.List;

public class ProductService {
    private final ProductDAO productDAO;

    public ProductService() {
        this.productDAO = new ProductDAO();
    }

    public List<Product> getAllProducts() {
        return productDAO.findAll();
    }

    public List<Product> getProductsByType(String type) {
        return productDAO.findByType(type);
    }

    public Product getProductById(Long id) {
        return productDAO.findById(id);
    }
} 