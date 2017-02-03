package admin;

import entities.Admins;
import entities.Customers;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.servlet.http.HttpSession;
import managed.SessionMB;
import session.AdminFacade;
import session.CustomersFacade;

@ManagedBean(name = "loginADMB")
@RequestScoped
public class LoginMB {

    @EJB
    private AdminFacade adminFacade;
    private Admins admin;
    private String currentPassword, newPassword, rePassword;

    public LoginMB() {
        if (admin == null) {
            admin = new Admins();
        }
    }

    public Admins getAdmin() {
        return admin;
    }

    public void setAdmin(Admins admin) {
        this.admin = admin;
    }

    public String login() {
        Admins adminFind = adminFacade.find(admin.getUsername());
        if (adminFind != null) {
            if (adminFind.getPassword().equals(admin.getPassword())) {
                HttpSession session = SessionMB.getSession();
                session.setAttribute("adminuser", admin.getUsername());
                return "index";
            }
        }
        SessionMB.getRequest().setAttribute("message", "Login information is not valid");
        return "";
    }

    public String changePass() {
        HttpSession session = SessionMB.getSession();
        String username = session.getAttribute("adminuser").toString();
        Admins cusChange = adminFacade.find(username);
        if (cusChange == null) {
            return "index";
        }
        if (!cusChange.getPassword().equals(currentPassword)) {
            SessionMB.getRequest().setAttribute("message", "Current password is not correct");
            return "";
        }

        if (!newPassword.equals(rePassword)) {
            SessionMB.getRequest().setAttribute("message", "Re password is not match");
            return "";
        }
        cusChange.setPassword(newPassword);
        adminFacade.edit(cusChange);
        SessionMB.getRequest().setAttribute("success", "Change password successfull");
        return "";
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

    public String logout() {
        SessionMB.getSession().invalidate();
        return "index";
    }
}
