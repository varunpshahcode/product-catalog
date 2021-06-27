package com.ww.ecom.catalog.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ww.ecom.catalog.model.Discount;
import com.ww.ecom.catalog.model.Fulfillment;
import com.ww.ecom.catalog.repository.DiscountRepository;
import com.ww.ecom.catalog.repository.FulfillmentRepository;

@RestController
public class FulfillmentController {
    @Autowired
    private FulfillmentRepository fulfillmentRepository;

    @GetMapping("/fulfillment")
    public Page<Fulfillment> getFulfillment(Pageable pageable) {
        return fulfillmentRepository.findAll(pageable);
    }

    @PostMapping("/fulfillment")
    public Fulfillment createFulfillment(@Valid @RequestBody Fulfillment fulfillment) {
        return fulfillmentRepository.save(fulfillment);
    }

}
