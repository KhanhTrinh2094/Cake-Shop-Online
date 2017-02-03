package session;

import entities.Events;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class EventsFacade extends AbstractFacade<Events> {

    @PersistenceContext(unitName = "Project_TungPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    @Override
    public Events find(Object id) {
        try {
            Query q = em.createQuery("SELECT a FROM Events a Where a.eventID = :id AND a.status = 1");
            q.setParameter("id", id);
            Object result = q.getSingleResult();
            if (result != null) {
                return (Events) q.getSingleResult();
            }
        } catch (NoResultException e) {
            return null;
        }
        return null;
    }

    @Override
    public List<Events> findAll() {
        Query q = em.createQuery("SELECT a FROM Events a Where a.status = 1 ORDER BY a.eventID DESC");
        return q.getResultList();
    }

    @Override
    public void remove(Events events) {
        Query q = em.createQuery("UPDATE Cakes a SET a.status = 0 WHERE a.eventID.eventID = :ID");
        q.setParameter("ID", events.getEventID());
        q.executeUpdate();
        q = em.createQuery("UPDATE Events a SET a.status = 0 Where a.eventID = :ID");
        q.setParameter("ID", events.getEventID());
        q.executeUpdate();
    }

    @Override
    public int count() {
        Query q = em.createQuery("SELECT COUNT(a) FROM Events a Where a.status = 1");
        return ((Long) q.getSingleResult()).intValue();
    }

    public EventsFacade() {
        super(Events.class);
    }

}
