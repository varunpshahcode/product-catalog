package com.ww.ecom.catalog.repository;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ww.ecom.catalog.model.Category;
import com.ww.ecom.catalog.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {

    @Query("SELECT p FROM Product p WHERE LOWER(p.category.name) = LOWER(:categoryName)")
    public Page<Product> findByProductByCategoryName(@Param("categoryName") String categoryName , Pageable pageable);
}
