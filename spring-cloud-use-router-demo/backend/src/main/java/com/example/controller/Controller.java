
package com.example.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class Controller {

    @Value("${version:v0}")
    private String version;

    @GetMapping("/hello")
    public String hello() {
        return "hello " + version;
    }
}
