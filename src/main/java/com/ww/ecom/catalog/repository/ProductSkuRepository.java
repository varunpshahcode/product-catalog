package com.ww.ecom.catalog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ww.ecom.catalog.model.ProductSku;

public interface ProductSkuRepository extends JpaRepository<ProductSku, Long> {
}
