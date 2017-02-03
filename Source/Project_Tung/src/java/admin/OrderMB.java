package admin;

import entities.Orders;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import session.OrdersFacade;

@ManagedBean(name = "orderADMB")
@RequestScoped
public class OrderMB {

    @EJB
    private OrdersFacade ordersFacade;
    private Orders order;

    public OrderMB() {
        if (order == null) {
            order = new Orders();
        }
    }

    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }

    public List<Orders> getList(){
        return ordersFacade.findAll();
    }
    
    public String detail(int id){
        order = ordersFacade.find(id);
        if(order != null){
            return "DetailOrder";
        }
        return "";
    }
    
    public String edit(int id){
        
        return "";
    }
    
    public String delete(int id){
        Orders orders = ordersFacade.find(id);
        if(orders != null){
            ordersFacade.remove(orders);
        }
        return "";
    }
    
    public String changeStatus(int id, int status){
        Orders orders = ordersFacade.find(id);
        if(orders != null){
            orders.setOrderStatus(new Short("" + status));
            ordersFacade.edit(orders);
        }
        return "";
    }
}
