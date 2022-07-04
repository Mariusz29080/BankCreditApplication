package pl.coderslab.borrowers;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

@Repository
@Transactional
public class EstateDao {

    @PersistenceContext
    EntityManager entityManager;

    public void save(Estate estate) {
        entityManager.persist(estate);
    }

    public void merge(Estate estate) {
        entityManager.merge(estate);
    }

    public Estate find(long id) {
        return entityManager.find(Estate.class, id);
    }

}
