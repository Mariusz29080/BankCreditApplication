package pl.coderslab.borrowers;

import jdk.dynalink.linker.LinkerServices;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface BorrowerRepository extends JpaRepository<Borrower, Long> {

    List<Borrower> findAllByStart(Start start);
}
