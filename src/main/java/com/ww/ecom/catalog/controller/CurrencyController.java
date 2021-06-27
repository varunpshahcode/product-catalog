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
import com.ww.ecom.catalog.model.Media;
import com.ww.ecom.catalog.repository.CurrencyRepository;
import com.ww.ecom.catalog.repository.MediaRepository;

@RestController
public class CurrencyController {
    @Autowired
    private CurrencyRepository currencyRepository;

    @GetMapping("/currency")
    public Page<Currency> getCurrency(Pageable pageable) {
        return currencyRepository.findAll(pageable);
    }

    @PostMapping("/currency")
    public Currency createCurrency(@Valid @RequestBody Currency currency) {
        return currencyRepository.save(currency);
    }

}
