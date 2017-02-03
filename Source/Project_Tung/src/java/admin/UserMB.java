package admin;

import entities.Customers;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import session.CustomersFacade;

@ManagedBean(name = "userADMB")
@SessionScoped
public class UserMB {

    @EJB
    private CustomersFacade customersFacade;

    public UserMB() {
    }

    public List<Customers> getList() {
        return customersFacade.findAll();
    }
    
    public List<Customers> getListAdmin() {
        return customersFacade.findAllAdmin();
    }
    
    public String delete(String username){
        Customers cus = customersFacade.find(username);
        if(cus != null){
            customersFacade.remove(cus);
        }
        return "";
    }
    
    public String disable(String username){
        Customers cus = customersFacade.find(username);
        if(cus != null){
            cus.setStatus(new Short("0"));
            customersFacade.edit(cus);
        }
        return "";
    }
    public String enable(String username){
        Customers cus = customersFacade.findAdmin(username);
        if(cus != null){
            cus.setStatus(new Short("1"));
            customersFacade.edit(cus);
        }
        return "";
    }
}
