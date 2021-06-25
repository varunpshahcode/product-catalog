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
@Table(name = "CURRENCY")
public class Currency extends Auditable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    @JsonIgnore
    private Long id;

    @Column(name = "NAME")
    private String name;

    @JsonIgnore
    @OneToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "ID", nullable = false)
    private Product product;

}
