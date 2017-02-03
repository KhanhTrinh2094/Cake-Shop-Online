package admin;

import java.math.BigDecimal;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import session.CakesFacade;
import session.CustomersFacade;
import session.EventsFacade;
import session.OrdersFacade;

@ManagedBean(name = "indexADMB")
@RequestScoped
public class IndexMB {

    @EJB
    private EventsFacade eventsFacade;
    @EJB
    private OrdersFacade ordersFacade;
    @EJB
    private CustomersFacade customersFacade;
    @EJB
    private CakesFacade cakesFacade;

    public IndexMB() {
    }

    public int getCountUser(){
        return customersFacade.count();
    }
    
    public int getCountCake(){
        return cakesFacade.count();
    }
    
    public int getCountOrder(){
        return ordersFacade.count();
    }
    
    public int getCountEvent(){
        return eventsFacade.count();
    }
    
    public BigDecimal getTotalPrice(){
        return ordersFacade.getCountOrder();
    }
}
