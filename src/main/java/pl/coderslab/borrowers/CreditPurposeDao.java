package pl.coderslab.borrowers;

import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;
import java.util.List;

@Repository
@Transactional
public class CreditPurposeDao {




    @PersistenceContext
     EntityManager entityManager;

    public void save(CreditPurpose creditPurpose) {
        entityManager.persist(creditPurpose);
    }
    public void merge(CreditPurpose creditPurpose) {
        entityManager.merge(creditPurpose);
    }

    public CreditPurpose find(long id) {
        return entityManager.find(CreditPurpose.class, id);
    }
    public List<CreditPurpose> getList() {
        return entityManager
                .createQuery("select b from CreditPurpose b")
                .getResultList();


    }
}
