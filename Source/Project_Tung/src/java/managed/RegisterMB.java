package managed;

import entities.Customers;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.servlet.http.HttpSession;
import session.CustomersFacade;

@ManagedBean
@RequestScoped
public class RegisterMB {

    @EJB
    private CustomersFacade customersFacade;
    private Customers customer;
    private String rePassword;

    public RegisterMB() {
        if (customer == null) {
            customer = new Customers();
        }
    }

    public Customers getCustomer() {
        return customer;
    }

    public void setCustomer(Customers customer) {
        this.customer = customer;
    }

    public String getRePassword() {
        return rePassword;
    }

    public void setRePassword(String rePassword) {
        this.rePassword = rePassword;
    }

    public String register() {
        if (!customer.getPassword().equals(rePassword)) {
            SessionMB.getRequest().setAttribute("message", "Re password not match");
            return "";
        }
        if(customersFacade.findDuplicate(customer.getUsername()) != null){
            SessionMB.getRequest().setAttribute("message", "This username already in use");
            return "";
        }
        customer.setStatus(new Short("1"));
        customersFacade.create(customer);
        HttpSession session = SessionMB.getSession();
        session.setAttribute("username", customer.getUsername());
        return "index";
    }

}
