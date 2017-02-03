package managed;

import entities.Cakes;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import session.CakesFacade;

@ManagedBean
@SessionScoped
public class SearchMB implements Serializable{

    @EJB
    private CakesFacade cakesFacade;
    private String name;
    public List<Cakes> list;

    public SearchMB() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        System.out.println(name);
        this.name = name;
    }

    public List<Cakes> getList() {
        return list;
    }

    public void setList(List<Cakes> list) {
        this.list = list;
    }

    public String searchByName() {
        list = cakesFacade.searchByName(name);
        name = "";
        return "Search";
    }
}
