package admin;

import entities.Events;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.SessionScoped;
import session.EventsFacade;

@ManagedBean(name = "eventADMB")
@SessionScoped
public class EventMB {

    @EJB
    private EventsFacade eventsFacade;

    private Events events;

    public EventMB() {
        if (events == null) {
            events = new Events();
        }
    }

    public List<Events> getList() {
        return eventsFacade.findAll();
    }

    public Events getEvents() {
        return events;
    }

    public void setEvents(Events events) {
        this.events = events;
    }

    public String create() {
        eventsFacade.create(events);
        events = new Events();
        return "";
    }

    public String preUpdate(int id) {
        events = eventsFacade.find(id);
        if (events == null) {
            return "";
        } else {
            return "EditEvent";
        }
    }

    public String update() {
        if (events != null) {
            eventsFacade.edit(events);
            events = new Events();
            return "EventManager";
        }
        return "";
    }

    public String delete(int id) {
        events = eventsFacade.find(id);
        if (events != null) {
            eventsFacade.remove(events);
            return "";
        }
        return "";
    }
}
