
package entities;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "Cakes")
@XmlRootElement
public class Cakes implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "CakeID")
    private Integer cakeID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "CakeName")
    private String cakeName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 1073741823)
    @Column(name = "CakeDetails")
    private String cakeDetails;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Column(name = "CakePrice")
    private BigDecimal cakePrice;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "CakeImage")
    private String cakeImage;
    @Basic(optional = false)
    @NotNull
    @Column(name = "IsEgg")
    private boolean isEgg;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Status")
    private short status;
    @JoinColumn(name = "EventID", referencedColumnName = "EventID")
    @ManyToOne(optional = false)
    private Events eventID;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cakeID")
    private Collection<OrderDetails> orderDetailsCollection;

    public Cakes() {
    }

    public Cakes(Integer cakeID) {
        this.cakeID = cakeID;
    }

    public Cakes(Integer cakeID, String cakeName, String cakeDetails, BigDecimal cakePrice, String cakeImage, boolean isEgg, short status) {
        this.cakeID = cakeID;
        this.cakeName = cakeName;
        this.cakeDetails = cakeDetails;
        this.cakePrice = cakePrice;
        this.cakeImage = cakeImage;
        this.isEgg = isEgg;
        this.status = status;
    }

    public Integer getCakeID() {
        return cakeID;
    }

    public void setCakeID(Integer cakeID) {
        this.cakeID = cakeID;
    }

    public String getCakeName() {
        return cakeName;
    }

    public void setCakeName(String cakeName) {
        this.cakeName = cakeName;
    }

    public String getCakeDetails() {
        return cakeDetails;
    }

    public void setCakeDetails(String cakeDetails) {
        this.cakeDetails = cakeDetails;
    }

    public BigDecimal getCakePrice() {
        return cakePrice;
    }

    public void setCakePrice(BigDecimal cakePrice) {
        this.cakePrice = cakePrice;
    }

    public String getCakeImage() {
        return cakeImage;
    }

    public void setCakeImage(String cakeImage) {
        this.cakeImage = cakeImage;
    }

    public boolean getIsEgg() {
        return isEgg;
    }

    public void setIsEgg(boolean isEgg) {
        this.isEgg = isEgg;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }

    public Events getEventID() {
        return eventID;
    }

    public void setEventID(Events eventID) {
        this.eventID = eventID;
    }

    @XmlTransient
    public Collection<OrderDetails> getOrderDetailsCollection() {
        return orderDetailsCollection;
    }

    public void setOrderDetailsCollection(Collection<OrderDetails> orderDetailsCollection) {
        this.orderDetailsCollection = orderDetailsCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (cakeID != null ? cakeID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Cakes)) {
            return false;
        }
        Cakes other = (Cakes) object;
        return (this.cakeID != null || other.cakeID == null) && (this.cakeID == null || this.cakeID.equals(other.cakeID));
    }

    @Override
    public String toString() {
        return "entities.Cakes[ cakeID=" + cakeID + " ]";
    }
    
}
