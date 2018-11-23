package com.nhmarsh.honeydewapi.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;

@RestController
@RequestMapping("/springjwt")
public class ResourceController {

    @GetMapping(value ="/test")
    @PreAuthorize("hasAuthority('ADMIN_USER') or hasAuthority('STANDARD_USER')")
    public String test() {
        System.out.println(SecurityContextHolder.getContext().getAuthentication().getPrincipal());
        return "test";
    }

}
