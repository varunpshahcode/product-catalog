package com.ww.ecom.catalog.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ww.ecom.catalog.model.Product;
import com.ww.ecom.catalog.repository.ProductRepository;
import javax.validation.Valid;

@RestController
public class ProductController {
    @Autowired
    private ProductRepository productRepository;

    @GetMapping("/products")
    public Page<Product> getProducts(Pageable pageable) {
        return productRepository.findAll(pageable);
    }

    @PostMapping("/product")
    public Product createProduct(@Valid @RequestBody Product product) {
        return productRepository.save(product);
    }

    @GetMapping("/product/{categoryName}/products")
    public Page<Product> findByCategoryName(@PathVariable String categoryName , Pageable pageable) {

        return productRepository.findByProductByCategoryName(categoryName , pageable);
    }

    @DeleteMapping("/product/{id}")
    public void deleteProduct(@PathVariable Long productId) {
        productRepository.getById(productId).setIsActive(false);
    }
}
