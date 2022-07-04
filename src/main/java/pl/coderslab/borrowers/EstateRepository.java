package pl.coderslab.borrowers;

import org.springframework.data.jpa.repository.JpaRepository;

public interface EstateRepository extends JpaRepository<Estate, Long> {
}
