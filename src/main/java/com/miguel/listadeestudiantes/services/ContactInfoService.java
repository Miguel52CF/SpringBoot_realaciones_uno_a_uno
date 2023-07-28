package com.miguel.listadeestudiantes.services;

import org.springframework.stereotype.Service;

import com.miguel.listadeestudiantes.models.ContactInfo;
import com.miguel.listadeestudiantes.repositories.ContactInfoRepository;

@Service
public class ContactInfoService extends ServicioBase<ContactInfo> {

    public ContactInfoService(ContactInfoRepository repositorioBase) {
        super(repositorioBase);
    }
    
}
