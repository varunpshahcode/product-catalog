package com.ww.ecom.catalog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ww.ecom.catalog.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
