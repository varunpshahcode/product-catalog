package com.ww.ecom.catalog.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ww.ecom.catalog.model.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {
}
