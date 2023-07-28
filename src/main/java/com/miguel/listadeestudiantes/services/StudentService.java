package com.miguel.listadeestudiantes.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.miguel.listadeestudiantes.models.Student;
import com.miguel.listadeestudiantes.repositories.RepositorioBase;
import com.miguel.listadeestudiantes.repositories.Studentrepository;

@Service
public class StudentService extends ServicioBase<Student>{
    
    @Autowired Studentrepository studentrepository;

    public StudentService(RepositorioBase<Student> repositorioBase) {
        super(repositorioBase);
    }

    public List<Student> getStudentsInfoContact(){
        return studentrepository.findAll();
    }

}
