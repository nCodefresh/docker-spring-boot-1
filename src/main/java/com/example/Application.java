package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by nikolai on 29.4.16.
 *
 */
@SpringBootApplication
@RestController
public class Application {
    @RequestMapping("/")
    public String home() {
        return "Hello Docker World 5";
    }

    public static void main(String[] args) {
        System.out.println("ENV_VARS:" + System.getenv("TEST_ENV_VAR"));
        SpringApplication.run(Application.class, args);
    }
}
