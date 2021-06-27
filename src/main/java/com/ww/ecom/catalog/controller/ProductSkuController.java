package com.ww.ecom.catalog.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ww.ecom.catalog.model.Media;
import com.ww.ecom.catalog.model.ProductSku;
import com.ww.ecom.catalog.repository.MediaRepository;
import com.ww.ecom.catalog.repository.ProductSkuRepository;

@RestController
public class ProductSkuController {
    @Autowired
    private ProductSkuRepository productSkuRepository;

    @GetMapping("/productsku")
    public Page<ProductSku> getSkus(Pageable pageable) {
        return productSkuRepository.findAll(pageable);
    }

    @PostMapping("/productsku")
    public ProductSku createSku(@Valid @RequestBody ProductSku productSku) {
        return productSkuRepository.save(productSku);
    }

}
