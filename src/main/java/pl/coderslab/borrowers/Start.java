package pl.coderslab.borrowers;

import jdk.jfr.Unsigned;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.UniqueElements;

import javax.persistence.*;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "creditdata")
@Data
@NoArgsConstructor
@AllArgsConstructor

public class Start {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private long id;

    @NotNull
    private String purposeOfCredit;

    @NotNull
    @Min(12)
    @Max(360)
    private int creditPeriod;

    @NotNull
    @Min(100000)
    @Max(1000000)
    private double amount;

    @NotNull
    @Min(100000)
    @Max(1000000)
    private double ownContribution;

    @NotNull
    @Min(110000)
    private double price;

    @NotNull
    private String typeOfflat;

    @NotNull
    private String promotion;

    @NotNull
    private String interest;

    @ManyToOne
    private CreditPurpose creditPurpose;

}
