package com.idiot.meetup;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {

    @GetMapping("/api/greeting")
    public String greeting(String name) {
        return "Hello " + name;
    }

}
