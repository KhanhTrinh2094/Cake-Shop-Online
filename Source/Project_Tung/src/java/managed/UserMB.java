package managed;

import entities.Customers;
import entities.Orders;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import session.CustomersFacade;
import session.OrdersFacade;

@ManagedBean
@SessionScoped
public class UserMB {

    @EJB
    private OrdersFacade ordersFacade;
    @EJB
    private CustomersFacade customersFacade;
    private Customers customer;
    private Orders order;
    private List<Orders> listOrder;

    public UserMB() {
        if (customer == null) {
            customer = new Customers();
        }
        if(listOrder == null){
            listOrder = new ArrayList<>();
        }
    }

    public Customers getCustomer() {
        return customer;
    }

    public void setCustomer(Customers customer) {
        this.customer = customer;
    }

    public String profile() {
        String username = SessionMB.getSession().getAttribute("username").toString();
        if (username != null) {
            customer = customersFacade.find(username);
            listOrder = ordersFacade.getListByUsername(username);
            if (customer.getUsername() != null) {
                return "Profile";
            }
        }
        return "Login";
    }

    public String edit() {
        String username = SessionMB.getSession().getAttribute("username").toString();
        if (username != null) {
            customer = customersFacade.find(username);
            if (customer.getUsername() != null) {
                return "EditProfile";
            }
        }
        return "Login";
    }

    public String update() {
        if (customer != null && customer.getUsername() != null) {
            customersFacade.edit(customer);
            return profile();
        }
        return "";
    }

    public Orders getOrder() {
        return order;
    }

    public void setOrder(Orders order) {
        this.order = order;
    }

    public List<Orders> getListOrder() {
        return listOrder;
    }

    public void setListOrder(List<Orders> listOrder) {
        this.listOrder = listOrder;
    }

}
