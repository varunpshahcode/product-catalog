package com.ww.ecom.catalog.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ww.ecom.catalog.model.Currency;
import com.ww.ecom.catalog.model.Discount;
import com.ww.ecom.catalog.repository.CurrencyRepository;
import com.ww.ecom.catalog.repository.DiscountRepository;

@RestController
public class DiscountController {
    @Autowired
    private DiscountRepository discountRepository;

    @GetMapping("/discount")
    public Page<Discount> getDiscount(Pageable pageable) {
        return discountRepository.findAll(pageable);
    }

    @PostMapping("/discount")
    public Discount createDiscount(@Valid @RequestBody Discount discount) {
        return discountRepository.save(discount);
    }

}
