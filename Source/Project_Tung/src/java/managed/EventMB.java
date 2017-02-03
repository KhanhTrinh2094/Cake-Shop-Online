package managed;

import entities.Cakes;
import entities.Events;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;
import javax.faces.context.FacesContext;
import session.CakesFacade;
import session.EventsFacade;

@ManagedBean
@SessionScoped
public class EventMB implements Serializable{

    @EJB
    private CakesFacade cakesFacade;
    @EJB
    private EventsFacade eventsFacade;
    private Events event;
    private int eventID;
    private List<Cakes> listCake;

    public EventMB() {
    }

    public List<Events> getList() {
        return eventsFacade.findAll();
    }

    public Events getEvent() {
        return event;
    }

    public void setEvent(Events event) {
        this.event = event;
    }

    public int getEventID() {
        return eventID;
    }

    public void setEventID(int eventID) {
        this.eventID = eventID;
    }

    public List<Cakes> getListCake() {
        return listCake;
    }

    public void setListCake(List<Cakes> listCake) {
        this.listCake = listCake;
    }

    public String showEvent() {
        Map<String, String> params = FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap();
        int id = Integer.parseInt(params.get("eventID"));
        if (id <= 0) {
            return "index";
        } else {
            this.eventID = id;
            this.event = eventsFacade.find(id);
            setListCake(cakesFacade.getListByEvent(id));
            return "Event";
        }
    }

}
