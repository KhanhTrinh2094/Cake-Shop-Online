
package session;

import entities.FeedBack;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class FeedBackFacade extends AbstractFacade<FeedBack> {
    @PersistenceContext(unitName = "Project_TungPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public FeedBackFacade() {
        super(FeedBack.class);
    }
    
    @Override
    public FeedBack find(Object id) {
        try {
            Query q = em.createQuery("SELECT a FROM FeedBack a Where a.id = :id AND a.status = 1");
            q.setParameter("id", id);
            Object result = q.getSingleResult();
            if (result != null) {
                return (FeedBack) q.getSingleResult();
            }
        } catch (NoResultException e) {
            return null;
        }
        return null;
    }

    @Override
    public List<FeedBack> findAll() {
        Query q = em.createQuery("SELECT a FROM FeedBack a Where a.status = 1");
        return q.getResultList();
    }

    @Override
    public void remove(FeedBack events) {
        Query q = em.createQuery("UPDATE FeedBack a SET a.status = 0 Where a.id = :ID");
        q.setParameter("ID", events.getId());
        q.executeUpdate();
    }

    @Override
    public int count() {
        Query q = em.createQuery("SELECT COUNT(a) FROM FeedBack a Where a.status = 1");
        return ((Long) q.getSingleResult()).intValue();
    }
}
