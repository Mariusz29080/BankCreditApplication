package pl.coderslab.borrowers;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.UniqueElements;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "creditPurpose")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class CreditPurpose {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    @UniqueElements
    private String name;

    @Override
    public String toString() {
        return  name + "";
    }



}
