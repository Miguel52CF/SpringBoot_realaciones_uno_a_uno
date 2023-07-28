package com.miguel.listadeestudiantes.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miguel.listadeestudiantes.models.Student;
import com.miguel.listadeestudiantes.services.StudentService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/students")
public class StudentController {

    @Autowired StudentService studentService;

    @GetMapping("/new")
    public String New(@ModelAttribute("student") Student student){
        return "nuevoEstudiante.jsp";
    }

    @PostMapping("/create")
    public String Create(@Valid @ModelAttribute("student") Student student, BindingResult results){
        if(results.hasErrors()){
             return "nuevoEstudiante.jsp";
        }else{
            studentService.save(student);
            return "redirect:/";
        }
    }
    
}
