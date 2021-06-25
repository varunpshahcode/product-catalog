package com.ww.ecom.catalog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ww.ecom.catalog.model.Currency;

public interface CurrencyRepository extends JpaRepository<Currency, Long> {
}
