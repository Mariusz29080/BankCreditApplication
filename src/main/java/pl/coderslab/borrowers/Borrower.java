package pl.coderslab.borrowers;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Cascade;
import org.hibernate.validator.constraints.UniqueElements;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.ModelAttribute;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "borrowers")
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Borrower {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private long id;

    @NotNull
    private String firstName;

    @NotNull
    private String lastName;

    @NotNull
    private String sex;

    @NotNull
    private String pesel;

    @NotNull
    private String dateOfBirth;

    @NotNull
    private String email;

    @NotNull
    private String formOfEmployment;

    @ManyToOne
    private Start start;


    public String toStringName() {
        return "Borrower{" +
                "firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                '}';
    }


    //    @NotNull
//    private String purposeOfCredit;
//
//    @NotNull
//    @Min(12)
//    @Max(360)
//    private int creditPeriod;


}

