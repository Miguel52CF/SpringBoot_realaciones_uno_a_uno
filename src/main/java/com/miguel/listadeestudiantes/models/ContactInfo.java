package com.miguel.listadeestudiantes.models;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "info_contact")
@Getter
@Setter
@NoArgsConstructor
public class ContactInfo extends ModeloBase{

    @Size(min=5,max=200)
    private String address;
    
    @Size(min=5,max=200)
    private String city;

    @Size(min = 1 , max = 200)
    private String state;

    @NotNull
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="student_id")
    private Student student;

}
