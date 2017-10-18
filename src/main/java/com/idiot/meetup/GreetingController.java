package com.idiot.meetup;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

    @GetMapping("/api/greeting")
    public String greeting(String name, int age) {
        return String.format("Hello %s. You are %d years old", name, age);
    }

}
