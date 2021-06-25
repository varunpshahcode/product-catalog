package com.ww.ecom.catalog.audit;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.EntityListeners;
import javax.persistence.MappedSuperclass;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import java.util.Date;

import org.springframework.data.annotation.CreatedBy;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedBy;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Getter
@Setter
@MappedSuperclass
@EntityListeners(AuditingEntityListener.class)
public class Auditable {

    @Temporal(TemporalType.TIMESTAMP)
    @LastModifiedDate
    @Column(name = "ENTERED")
    @JsonIgnore
    private Date entered;

    @LastModifiedBy
    @Column(name = "ENTEREDBY")
    @JsonIgnore
    private String enteredBy;

    @Temporal(TemporalType.TIMESTAMP)
    @CreatedDate
    @Column(name = "CREATED")
    @JsonIgnore
    private Date created;

    @CreatedBy
    @Column(name = "CREATEDBY")
    @JsonIgnore
    private String createdBy;
}
