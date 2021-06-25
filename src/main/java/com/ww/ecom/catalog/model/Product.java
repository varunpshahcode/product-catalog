package com.ww.ecom.catalog.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

import java.math.BigDecimal;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.ww.ecom.catalog.audit.Auditable;

@Getter
@Setter
@ToString
@Entity
@Table(name = "PRODUCT")
public class Product extends Auditable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "DESCRIPTION")
    private String description;

    @Column(name = "URL")
    private String url;

    @Column(name = "ISACTIVE")
    private Boolean isActive;

    @Column(name = "ISNEW")
    private Boolean isNew;

    @Column(name = "RETAILPRICE")
    private BigDecimal retailPrice;

    @Column(name = "SALEPRICE")
    private BigDecimal salePrice;

    @OneToOne(fetch = FetchType.LAZY,
            cascade =  CascadeType.ALL,
            mappedBy = "product")
    private Currency currency;

    @OneToOne(fetch = FetchType.LAZY,
            cascade =  CascadeType.ALL,
            mappedBy = "product")
    private Discount discount;

    @OneToMany(fetch = FetchType.LAZY,
            cascade =  CascadeType.ALL,
            mappedBy = "product")
    private List<Media> medias;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @JoinColumn(name="categoryid",referencedColumnName="ID", nullable = false )
    private Category category;

    @OneToMany(fetch = FetchType.LAZY,
            cascade =  CascadeType.ALL,
            mappedBy = "product")
    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    private List<ProductSku> skus;

    public Product() {
    }

    public Product(String name, String description, String url, Boolean isActive, Boolean isNew, BigDecimal retailPrice, BigDecimal salePrice) {
        this.name = name;
        this.description = description;
        this.url = url;
        this.isActive = isActive;
        this.isNew = isNew;
        this.retailPrice = retailPrice;
        this.salePrice = salePrice;
    }
}
