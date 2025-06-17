package com.pluralsight.NorthwindTradersAPI;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {

    @GetMapping("/")
    public String home(@RequestParam(required = false) String country) {
        if (country != null && !country.trim().isEmpty()) {
            return "Hello " + country;
        }
        return "Hello World";
    }
}
