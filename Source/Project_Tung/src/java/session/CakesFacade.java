package session;

import entities.Cakes;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class CakesFacade extends AbstractFacade<Cakes> {

    @PersistenceContext(unitName = "Project_TungPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CakesFacade() {
        super(Cakes.class);
    }

    @Override
    public Cakes find(Object id) {
        try {
            Query q = em.createQuery("SELECT a FROM Cakes a Where a.cakeID = :id AND a.status = 1");
            q.setParameter("id", id);
            Object result = q.getSingleResult();
            if (result != null) {
                return (Cakes) q.getSingleResult();
            }
        } catch (NoResultException e) {
            return null;
        }
        return null;
    }

    @Override
    public List<Cakes> findAll() {
        Query q = em.createQuery("SELECT a FROM Cakes a Where a.status = 1 ORDER BY a.cakeID DESC");
        return q.getResultList();
    }

    @Override
    public void remove(Cakes cake) {
        Query q = em.createQuery("UPDATE Cakes a SET a.status = 0 Where a.cakeID = :cakeID");
        q.setParameter("cakeID", cake.getCakeID());
        q.executeUpdate();
    }

    @Override
    public int count() {
        Query q = em.createQuery("SELECT COUNT(a) FROM Cakes a Where a.status = 1");
        return ((Long) q.getSingleResult()).intValue();
    }

    public List<Cakes> getListByEvent(int eventID) {
        Query q = em.createQuery("SELECT a FROM Cakes a Where a.eventID.eventID = :eventID AND a.status = 1");
        q.setParameter("eventID", eventID);
        return q.getResultList();
    }

    public List<Cakes> getRelatedByEvent(int eventID, int cakeID) {
        Query q = em.createQuery("SELECT a FROM Cakes a Where a.eventID.eventID = :eventID AND a.cakeID <> :cakeID AND a.status = 1");
        q.setParameter("eventID", eventID);
        q.setParameter("cakeID", cakeID);
        return q.getResultList();
    }

    public List<Cakes> searchByName(String name) {
        Query q = em.createQuery("SELECT a FROM Cakes a Where a.cakeName LIKE :name AND a.status = 1");
        q.setParameter("name", "%" + name + "%");
        return q.getResultList();
    }
}
