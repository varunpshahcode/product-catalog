package com.ww.ecom.catalog.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

import java.math.BigDecimal;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.ww.ecom.catalog.audit.Auditable;

@Getter
@Setter
@ToString
@Entity
@Table(name = "DISCOUNT")
public class Discount extends Auditable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    @JsonIgnore
    private Long id;

    @Column(name = "amount")
    private BigDecimal amount;

    @Column(name = "percentage")
    @JsonIgnore
    private Integer percentage;

    @JsonIgnore
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ID", nullable = false)
    private Product product;

    @JsonIgnore
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ID", nullable = false)
    private ProductSku productSku;

}
