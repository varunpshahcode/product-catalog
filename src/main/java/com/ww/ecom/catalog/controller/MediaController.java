package com.ww.ecom.catalog.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.ww.ecom.catalog.model.Media;
import com.ww.ecom.catalog.model.Product;
import com.ww.ecom.catalog.repository.MediaRepository;
import com.ww.ecom.catalog.repository.ProductRepository;

@RestController
public class MediaController {
    @Autowired
    private MediaRepository mediaRepository;

    @GetMapping("/media")
    public Page<Media> getMedias(Pageable pageable) {
        return mediaRepository.findAll(pageable);
    }

    @PostMapping("/media")
    public Media createMedia(@Valid @RequestBody Media media) {
        return mediaRepository.save(media);
    }

}
