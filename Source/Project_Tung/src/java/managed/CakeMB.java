package managed;

import entities.Cakes;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import session.CakesFacade;

@ManagedBean
@SessionScoped
public class CakeMB implements Serializable{

    @EJB
    private CakesFacade cakesFacade;
    private Cakes cake;
    private List<Cakes> relatedCake;

    public CakeMB() {
    }

    public List<Cakes> getList() {
        return cakesFacade.findAll();
    }

    public Cakes getCake() {
        return cake;
    }

    public void setCake(Cakes cake) {
        this.cake = cake;
    }

    public List<Cakes> getRelatedCake() {
        return relatedCake;
    }

    public void setRelatedCake(List<Cakes> relatedCake) {
        this.relatedCake = relatedCake;
    }

    public String detail(int id) {
        cake = cakesFacade.find(id);
        if (cake != null) {
            setRelatedCake(cakesFacade.getRelatedByEvent(cake.getEventID().getEventID(), cake.getCakeID()));
            return "Details";
        }
        return "";
    }

    public String detail() {
        Map<String, String> params = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
        int id = Integer.parseInt(params.get("cakeID"));
        System.out.println(id);
        if (id <= 0) {
            return "index";
        } else {
            cake = cakesFacade.find(id);
            if (cake != null) {
                setRelatedCake(cakesFacade.getRelatedByEvent(cake.getEventID().getEventID(), cake.getCakeID()));
                return "Details";
            }
            else {
                return "";
            }
        }
    }
}
