package session;

import entities.Customers;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class CustomersFacade extends AbstractFacade<Customers> {

    @PersistenceContext(unitName = "Project_TungPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomersFacade() {
        super(Customers.class);
    }

    @Override
    public Customers find(Object id) {
        try {
            Query q = em.createQuery("SELECT a FROM Customers a Where a.username = :id AND a.status = 1");
            q.setParameter("id", id);
            Object result = q.getSingleResult();
            if (result != null) {
                return (Customers) q.getSingleResult();
            }
        } catch (NoResultException e) {
            return null;
        }
        return null;
    }
    
    public Customers findAdmin(Object id) {
        try {
            Query q = em.createQuery("SELECT a FROM Customers a Where a.username = :id");
            q.setParameter("id", id);
            Object result = q.getSingleResult();
            if (result != null) {
                return (Customers) q.getSingleResult();
            }
        } catch (NoResultException e) {
            return null;
        }
        return null;
    }
    
    public Customers findDuplicate(Object id) {
        try {
            Query q = em.createQuery("SELECT a FROM Customers a Where a.username = :id");
            q.setParameter("id", id);
            Object result = q.getSingleResult();
            if (result != null) {
                return (Customers) q.getSingleResult();
            }
        } catch (NoResultException e) {
            return null;
        }
        return null;
    }

    @Override
    public List<Customers> findAll() {
        Query q = em.createQuery("SELECT a FROM Customers a Where a.status = 1");
        return q.getResultList();
    }
    
    public List<Customers> findAllAdmin() {
        Query q = em.createQuery("SELECT a FROM Customers a");
        return q.getResultList();
    }

    @Override
    public void remove(Customers events) {
        Query q = em.createQuery("UPDATE Customers a SET a.status = 0 Where a.username = :ID");
        q.setParameter("ID", events.getUsername());
        q.executeUpdate();
    }

    @Override
    public int count() {
        Query q = em.createQuery("SELECT COUNT(a) FROM Customers a Where a.status = 1");
        return ((Long) q.getSingleResult()).intValue();
    }
}
