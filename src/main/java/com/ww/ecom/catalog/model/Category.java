package com.ww.ecom.catalog.model;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import java.util.HashSet;
import java.util.Set;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.ww.ecom.catalog.audit.Auditable;

@Getter
@Setter
@ToString
@Entity
@Table(name = "CATEGORY")
public class Category extends Auditable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Long id;

    @Column(name = "NAME")
    private String name;

    @Column(name = "ISACTIVE")
    private Boolean isActive;

    @Column(name = "ISFEATURED")
    private Boolean isFeatured;

    @Column(name = "ISNAVIGATIONINCLUDED")
    private Boolean isNavigationIncluded;

    @Column(name = "URL")
    private String url;

    @Column(name = "URLKEY")
    private String urlKey;

    @ManyToOne
    @JoinColumn(name = "PARENTID")
    private Category parent;

    @OneToMany(fetch = FetchType.LAZY, mappedBy = "category", cascade = CascadeType.ALL)
    @JsonIgnore
    private Set<Product> products = new HashSet<Product>();


    public Category(String name, Boolean isActive, Boolean isFeatured, Boolean isNavigationIncluded, String url, String urlKey) {
        this.name = name;
        this.isActive = isActive;
        this.isFeatured = isFeatured;
        this.isNavigationIncluded = isNavigationIncluded;
        this.url = url;
        this.urlKey = urlKey;
    }

    public Category(String name, Boolean isActive, Boolean isFeatured, Boolean isNavigationIncluded, String url, String urlKey, Category parent) {
        this.name = name;
        this.isActive = isActive;
        this.isFeatured = isFeatured;
        this.isNavigationIncluded = isNavigationIncluded;
        this.url = url;
        this.urlKey = urlKey;
        this.parent = parent;
    }

    public Category() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getActive() {
        return isActive;
    }

    public void setActive(Boolean active) {
        isActive = active;
    }

    public Boolean getFeatured() {
        return isFeatured;
    }

    public void setFeatured(Boolean featured) {
        isFeatured = featured;
    }

    public Boolean getNavigationIncluded() {
        return isNavigationIncluded;
    }

    public void setNavigationIncluded(Boolean navigationIncluded) {
        isNavigationIncluded = navigationIncluded;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUrlKey() {
        return urlKey;
    }

    public void setUrlKey(String urlKey) {
        this.urlKey = urlKey;
    }

    public Category getParent() {
        return parent;
    }

    public void setParent(Category parent) {
        this.parent = parent;
    }
}
