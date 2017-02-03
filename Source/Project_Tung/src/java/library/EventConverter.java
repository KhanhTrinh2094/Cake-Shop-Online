package library;

import java.util.*;
import admin.CakeMB;
import entities.Events;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

@FacesConverter(forClass = Events.class)
public class EventConverter implements Converter {

    @Override
    public Object getAsObject(FacesContext facesContext, UIComponent component, String value) {
        if (value == null || value.length() == 0) {
            return null;
        }
        CakeMB controller = (CakeMB) facesContext.getApplication().getELResolver().getValue(facesContext.getELContext(), null, "cakeADMB");
        Events event = controller.getEventConverter(getKey(value));
        return event;
    }

    java.lang.Integer getKey(String value) {
        java.lang.Integer key;
        key = Integer.valueOf(value);
        return key;
    }

    String getStringKey(java.lang.Integer value) {
        StringBuilder sb = new StringBuilder();
        sb.append(value);
        return sb.toString();
    }

    @Override
    public String getAsString(FacesContext facesContext, UIComponent component, Object object) {
        if (object == null) {
            return null;
        }
        if (object instanceof Events) {
            Events o = (Events) object;
            return getStringKey(o.getEventID());
        } else {
            throw new IllegalArgumentException("object " + object + " is of type " + object.getClass().getName() + "; expected type: " + Events.class.getName());
        }
    }
}
