package com.ww.ecom.catalog.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.*;

import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.ww.ecom.catalog.audit.Auditable;

@Getter
@Setter
@ToString
@Entity
@Table(name = "MEDIA")
public class Media extends Auditable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "URL")
    private String url;

    @Column(name = "ALTTEXT")
    private String altText;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name="productSkuId",referencedColumnName="ID", insertable=false, updatable=false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private ProductSku productSku;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name="productId",referencedColumnName="ID", insertable=false, updatable=false)
    @OnDelete(action = OnDeleteAction.CASCADE)
    @JsonIgnore
    private Product product;

}
