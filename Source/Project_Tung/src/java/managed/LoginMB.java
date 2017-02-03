package managed;

import entities.Customers;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.servlet.http.HttpSession;
import session.CustomersFacade;

@ManagedBean
@RequestScoped
public class LoginMB {

    @EJB
    private CustomersFacade customersFacade;
    private Customers customer;
    private String currentPassword, newPassword, rePassword;

    public LoginMB() {
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

    public String getCurrentPassword() {
        return currentPassword;
    }

    public void setCurrentPassword(String currentPassword) {
        this.currentPassword = currentPassword;
    }

    public String getNewPassword() {
        return newPassword;
    }

    public void setNewPassword(String newPassword) {
        this.newPassword = newPassword;
    }

    public String getRePassword() {
        return rePassword;
    }

    public void setRePassword(String rePassword) {
        this.rePassword = rePassword;
    }

    public String login() {
        Customers findCus = customersFacade.find(customer.getUsername());
        if (findCus != null) {
            if (findCus.getPassword().equals(customer.getPassword())) {
                HttpSession session = SessionMB.getSession();
                session.setAttribute("username", customer.getUsername());
                return "index";
            }
        }
        SessionMB.getRequest().setAttribute("message", "Login information is not valid");
        return "";
    }

    public String changePass() {
        HttpSession session = SessionMB.getSession();
        String username = session.getAttribute("username").toString();
        Customers cusChange = customersFacade.find(username);
        if (cusChange == null) {
            return "index";
        }
        if(!cusChange.getPassword().equals(currentPassword)){
            SessionMB.getRequest().setAttribute("message", "Current password is not correct");
            return "";
        }
        
        if(!newPassword.equals(rePassword)){
            SessionMB.getRequest().setAttribute("message", "Re password is not match");
            return "";
        }
        cusChange.setPassword(newPassword);
        customersFacade.edit(cusChange);
        SessionMB.getRequest().setAttribute("success", "Change password successfull");
        return "";
    }

    public String logout() {
        SessionMB.getSession().invalidate();
        return "index";
    }
}
