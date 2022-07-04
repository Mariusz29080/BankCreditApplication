package pl.coderslab.borrowers;


import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.awt.print.Book;
import java.util.List;

@Repository
@Transactional
public class IncomeDao {


    @PersistenceContext
      EntityManager entityManager;

    public void saveIncome(Income income) {
        entityManager.persist(income);
    }
    public void merge(Income income) {
        entityManager.merge(income);
    }
    public Income findById(long id) {
        return entityManager.find(Income.class, id);
    }


    public List<Income> getList() {
        return entityManager
                .createQuery("select b from Income b")
                .getResultList();


    }
}
