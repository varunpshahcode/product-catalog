package com.ww.ecom.catalog.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.ww.ecom.catalog.audit.Auditable;

@Getter
@Setter
@ToString
@Entity
@Table(name = "FULFILLMENT")
public class Fulfillment extends Auditable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "FRIENDLYNAME")
    private String friendlyName;

    @Column(name = "TYPE")
    private String type;

    @JsonIgnore
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ID", nullable = false)
    private ProductSku productSku;

}
