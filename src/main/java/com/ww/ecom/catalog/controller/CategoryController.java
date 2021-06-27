package com.ww.ecom.catalog.controller;

import javax.validation.Valid;

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

import com.ww.ecom.catalog.model.Category;
import com.ww.ecom.catalog.model.Product;
import com.ww.ecom.catalog.repository.CategoryRepository;

@RestController
public class CategoryController {
    @Autowired
    private CategoryRepository categoryRepository;

    @GetMapping("/category")
    public Page<Category> getCategories(Pageable pageable) {
        return categoryRepository.findAll(pageable);
    }

    @PostMapping("/category/{parentCategoryId}/category")
    public Category createCategory(@PathVariable Long parentCategoryId , @Valid @RequestBody Category category) {
        category.setParent(categoryRepository.findById(parentCategoryId).get());
        return categoryRepository.save(category);
    }

    @DeleteMapping("/category/{id}")
    public void deleteCategory(@PathVariable Long categoryId) {
         categoryRepository.getById(categoryId).setActive(false);
    }

}
