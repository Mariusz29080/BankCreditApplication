package pl.coderslab.borrowers;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.UniqueElements;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import java.util.Date;

@Entity
@Table(name = "income")
@AllArgsConstructor
@NoArgsConstructor
@Data
public class Income {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private long id;

    @NotNull
    private double averageIncome;

    @NotNull
    private String formOfEmployment;

    @NotNull
    private String dateOfEmploymentFrom;

    @NotNull
    private String trade;

    @NotNull
    private String nameOfEmployer;

    @NotNull
    private double totalInstallmentOfObligations;

    @NotNull
    private double totalHouseholdExpenses;

    @ManyToOne
    private Borrower borrower;

    @ManyToOne
    private Start start;



}

