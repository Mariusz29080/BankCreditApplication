package pl.coderslab.borrowers;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.awt.print.Book;
import java.util.List;

@Repository
@Transactional
public class BorrowerDao {


    @PersistenceContext
    EntityManager entityManager;

    public void save(Borrower borrower) {
        entityManager.persist(borrower);
    }

    public void merge(Borrower borrower) {
        entityManager.merge(borrower);
    }

    public Borrower find(long id) {
        return entityManager.find(Borrower.class, id);
    }



    public List<Borrower> getList() {
        return entityManager
                .createQuery("select b from Borrower b")
                .getResultList();


    }

}
