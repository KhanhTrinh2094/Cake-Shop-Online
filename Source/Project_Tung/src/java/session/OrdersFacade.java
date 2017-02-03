
package session;

import entities.Cakes;
import entities.Orders;
import java.math.BigDecimal;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

@Stateless
public class OrdersFacade extends AbstractFacade<Orders> {
    @PersistenceContext(unitName = "Project_TungPU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrdersFacade() {
        super(Orders.class);
    }
    
    public int createOrders(Orders entity) {
        if (!constraintValidationsDetected(entity)) {
            getEntityManager().persist(entity);
            getEntityManager().flush();
            getEntityManager().refresh(entity);
        }
        return entity.getOrderID();
    }
    
    public List<Orders> getListByUsername(String username){
        Query q = em.createQuery("SELECT a FROM Orders a Where a.status = 1 AND a.username.username = :username");
        q.setParameter("username", username);
        return q.getResultList();
    }
    
    public BigDecimal getCountOrder(){
        Query q = em.createQuery("SELECT SUM(a.totalPrice) FROM Orders a");
        return (BigDecimal) q.getSingleResult();
    }
    
    @Override
    public Orders find(Object id) {
        try {
            Query q = em.createQuery("SELECT a FROM Orders a Where a.orderID = :id AND a.status = 1");
            q.setParameter("id", id);
            Object result = q.getSingleResult();
            if (result != null) {
                return (Orders) q.getSingleResult();
            }
        } catch (NoResultException e) {
            return null;
        }
        return null;
    }

    @Override
    public List<Orders> findAll() {
        Query q = em.createQuery("SELECT a FROM Orders a Where a.status = 1 ORDER BY a.orderID DESC");
        return q.getResultList();
    }

    @Override
    public void remove(Orders cake) {
        Query q = em.createQuery("UPDATE Orders a SET a.status = 0 Where a.orderID = :cakeID");
        q.setParameter("cakeID", cake.getOrderID());
        q.executeUpdate();
    }

    @Override
    public int count() {
        Query q = em.createQuery("SELECT COUNT(a) FROM Orders a Where a.status = 1");
        return ((Long) q.getSingleResult()).intValue();
    }
}
