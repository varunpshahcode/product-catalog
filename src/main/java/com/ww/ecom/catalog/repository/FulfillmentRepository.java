package com.ww.ecom.catalog.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ww.ecom.catalog.model.Fulfillment;

public interface FulfillmentRepository extends JpaRepository<Fulfillment, Long> {
}
