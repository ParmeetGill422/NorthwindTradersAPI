package com.pluralsight.NorthwindTradersAPI.models;

import java.math.BigDecimal;

public class Product {
    private int productId;
    private String productName;
    private int categoryId;
    private BigDecimal unitPrice; // ✅ use BigDecimal

    public Product() {} // ✅ no-arg constructor for deserialization

    public Product(int productId, String productName, int categoryId, BigDecimal unitPrice) {
        this.productId = productId;
        this.productName = productName;
        this.categoryId = categoryId;
        this.unitPrice = unitPrice;
    }

    public int getProductId() { return productId; }
    public void setProductId(int productId) { this.productId = productId; }

    public String getProductName() { return productName; }
    public void setProductName(String productName) { this.productName = productName; }

    public int getCategoryId() { return categoryId; }
    public void setCategoryId(int categoryId) { this.categoryId = categoryId; }

    public BigDecimal getUnitPrice() { return unitPrice; }
    public void setUnitPrice(BigDecimal unitPrice) { this.unitPrice = unitPrice; }
}
