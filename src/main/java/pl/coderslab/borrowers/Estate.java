package pl.coderslab.borrowers;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "estate")
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Estate {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private long id;

    @NotNull
    private String country;

    @NotNull
    private String province;


    @NotNull
    private String county;

    @NotNull
    private String community;

    @NotNull
    private String locality;

    @NotNull
    private String street;

    private String houseNo;

    private String flatNo;

    @NotNull
    private String registerNumber;

    @NotNull
    private double area;

    @NotNull
    private String standard;

    @OneToOne
    private Start start;


}
