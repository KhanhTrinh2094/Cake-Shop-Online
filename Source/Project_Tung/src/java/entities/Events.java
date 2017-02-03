
package entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "Events")
@XmlRootElement

public class Events implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "EventID")
    private Integer eventID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "EventName")
    private String eventName;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Status")
    private short status;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "eventID")
    private Collection<Cakes> cakesCollection;

    public Events() {
    }

    public Events(Integer eventID) {
        this.eventID = eventID;
    }

    public Events(Integer eventID, String eventName, short status) {
        this.eventID = eventID;
        this.eventName = eventName;
        this.status = status;
    }

    public Integer getEventID() {
        return eventID;
    }

    public void setEventID(Integer eventID) {
        this.eventID = eventID;
    }

    public String getEventName() {
        return eventName;
    }

    public void setEventName(String eventName) {
        this.eventName = eventName;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }

    @XmlTransient
    public Collection<Cakes> getCakesCollection() {
        return cakesCollection;
    }

    public void setCakesCollection(Collection<Cakes> cakesCollection) {
        this.cakesCollection = cakesCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (eventID != null ? eventID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Events)) {
            return false;
        }
        Events other = (Events) object;
        return (this.eventID != null || other.eventID == null) && (this.eventID == null || this.eventID.equals(other.eventID));
    }

    @Override
    public String toString() {
        return eventName;
    }
    
}
