package br.edu.fiap.ideaseeders.vinheria.model;

import java.math.BigDecimal;

public class Product {
    private Long id;
    private String name;
    private String type; // TINTO, BRANCO, ROSE, ESPUMANTE
    private String country;
    private String imagePath;
    private String flagPath;
    private BigDecimal price;

    public Product() {
    }

    public Product(String name, String type, String country, String imagePath, 
                   String flagPath, BigDecimal price) {
        this.name = name;
        this.type = type;
        this.country = country;
        this.imagePath = imagePath;
        this.flagPath = flagPath;
        this.price = price;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }
    
    public String getFlagPath() {
        return flagPath;
    }

    public void setFlagPath(String flagPath) {
        this.flagPath = flagPath;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", type='" + type + '\'' +
                ", country='" + country + '\'' +
                ", imagePath='" + imagePath + '\'' +
                ", flagPath='" + flagPath + '\'' +
                ", price=" + price +
                '}';
    }
} 