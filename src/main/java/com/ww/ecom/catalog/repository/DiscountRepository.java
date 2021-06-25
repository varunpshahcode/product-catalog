package com.ww.ecom.catalog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ww.ecom.catalog.model.Discount;

public interface DiscountRepository extends JpaRepository<Discount, Long> {
}
