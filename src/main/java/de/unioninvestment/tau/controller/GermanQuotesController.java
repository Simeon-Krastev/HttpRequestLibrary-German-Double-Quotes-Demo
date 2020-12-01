package de.unioninvestment.tau.controller;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.RequestMapping;

@RestController
public class GermanQuotesController {

    @RequestMapping("/")
    public String index() {
        return "üäöÜÖÄß";
    } //„“

}
