package com.yashodh.cicdpipeline.rest;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController

public class TestController {

    @GetMapping("/test")
    public ResponseEntity<Map<String, String>> test(){
        return ResponseEntity.ok().body(Map.of("Testing", "Test Data"));

    }

    @GetMapping
    public ResponseEntity<Map<String, String>> healthCheck(){
        return ResponseEntity.ok().body(Map.of("Status", "Up"));

    }
}
