package pl.coderslab.borrowers;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.awt.print.Book;
import java.util.List;

@Repository
@Transactional
public class StartDao {


    @PersistenceContext
     EntityManager entityManager;

    public void save(Start start) {
        entityManager.persist(start);
    }
    public void merge(Start start) {
        entityManager.merge(start);
    }

    public Start find(long start_id) {
        return entityManager.find(Start.class, start_id);
    }
    public List<Start> getList() {
        return entityManager
                .createQuery("select b from Start b")
                .getResultList();


    }
    public void update(Start start) {
        entityManager.merge(start);
    }


}
