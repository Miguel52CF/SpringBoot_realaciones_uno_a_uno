package com.miguel.listadeestudiantes.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.miguel.listadeestudiantes.models.Student;
import com.miguel.listadeestudiantes.services.StudentService;

@Controller
public class HomeController {

    @Autowired private StudentService studentService;

    @RequestMapping("/")
    public String Home(Model model) {
        List<Student> students = studentService.getStudentsInfoContact();
        model.addAttribute("students", students);
        return "index.jsp";
    }

}
