package pl.coderslab.borrowers;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface StartRepository  extends JpaRepository<Start, Long> {



}
