package com.miguel.listadeestudiantes.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miguel.listadeestudiantes.models.ContactInfo;
import com.miguel.listadeestudiantes.models.Student;
import com.miguel.listadeestudiantes.services.ContactInfoService;
import com.miguel.listadeestudiantes.services.StudentService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/contacts")
public class ContactInfoController {
    
    @Autowired ContactInfoService contactInfoService;

    @Autowired StudentService studentService;

    @GetMapping("/new")
    public String New(Model model, @ModelAttribute("ContactInfo") ContactInfo contactInfo){
        List<Student> students = studentService.findAll();
        model.addAttribute("students", students);
        return "addContactInfo.jsp";
    }

    @PostMapping("/create")
    public String Create(@Valid @ModelAttribute("ContactInfo") ContactInfo contactInfo, BindingResult results){
        if(results.hasErrors()){
           return "addContactInfo.jsp";
        }else{
            contactInfoService.save(contactInfo);
            return "redirect:/";
        }
    }

}
