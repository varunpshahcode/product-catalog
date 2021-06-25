package com.ww.ecom.catalog.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.ww.ecom.catalog.audit.Auditable;

@Entity
@Getter
@Setter
@ToString
@Table(name = "PRODUCT_SKU")
public class ProductSku extends Auditable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "DESCRITPION")
    private String descritpion;

    @Column(name = "SHORTDESC")
    private String shortDesc;

    @Column(name = "STARTDATE")
    private Date startDate;

    @Column(name = "SALEPRICE")
    private BigDecimal salePrice;

    @Column(name = "RETAILPRICE")
    private BigDecimal retailPrice;

    @Column(name = "BASEUNITPRICE")
    private String baseunitPrice;

    @OneToOne(fetch = FetchType.LAZY,
            cascade =  CascadeType.ALL,
            mappedBy = "productSku")
    private Discount discount;

    @Column(name = "ISACTIVE")
    private Boolean isActive;

    @Column(name = "ISAVAILABLE")
    private Boolean isAvailable;

    @Column(name = "INVENTORYTYPE")
    private String inventoryType;

    @Column(name = "WWSKU")
    private String wwSku;

    @Column(name = "PRODUCTTYPE")
    private String productType;

    @Column(name = "QTYAVAILABLE")
    private Integer qtyAvailable;

    @Column(name = "ISSUBSCRIPTION")
    private Boolean isSubscription;

    @Column(name = "TAXCODE")
    private String taxCode;

    @OneToMany(fetch = FetchType.LAZY,
            cascade =  CascadeType.ALL,
            mappedBy = "productSku")
    private List<Media> media;

    @OneToOne(fetch = FetchType.LAZY,
            cascade =  CascadeType.ALL,
            mappedBy = "productSku")
    private Fulfillment fulfillment;


    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name="productId",referencedColumnName="ID", insertable=false, updatable=false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
    @JsonIgnore
    private Product product;


}
