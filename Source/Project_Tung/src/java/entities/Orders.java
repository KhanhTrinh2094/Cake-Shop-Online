
package entities;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;
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
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "Orders")
@XmlRootElement
public class Orders implements Serializable {
    @Column(name = "Status")
    private Short status;
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "OrderID")
    private Integer orderID;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "RecipientName")
    private String recipientName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "RecipientAddress")
    private String recipientAddress;
    @Basic(optional = false)
    @NotNull
    @Column(name = "OrderTime")
    @Temporal(TemporalType.TIMESTAMP)
    private Date orderTime;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 11)
    @Column(name = "ContactNumber")
    private String contactNumber;
    @Size(max = 1073741823)
    @Column(name = "Note")
    private String note;
    @Basic(optional = false)
    @NotNull
    @Column(name = "DeliveryDate")
    @Temporal(TemporalType.TIMESTAMP)
    private Date deliveryDate;
    @Basic(optional = false)
    @NotNull
    @Column(name = "OrderStatus")
    private short orderStatus;
    @Column(name = "RecipientDOB")
    @Temporal(TemporalType.TIMESTAMP)
    private Date recipientDOB;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "TotalPrice")
    private BigDecimal totalPrice;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "orderID")
    private Collection<OrderDetails> orderDetailsCollection;
    @JoinColumn(name = "Username", referencedColumnName = "Username")
    @ManyToOne
    private Customers username;

    public Orders() {
    }

    public Orders(Integer orderID) {
        this.orderID = orderID;
    }

    public Orders(Integer orderID, String recipientName, String recipientAddress, Date orderTime, String contactNumber, Date deliveryDate, short orderStatus) {
        this.orderID = orderID;
        this.recipientName = recipientName;
        this.recipientAddress = recipientAddress;
        this.orderTime = orderTime;
        this.contactNumber = contactNumber;
        this.deliveryDate = deliveryDate;
        this.orderStatus = orderStatus;
    }

    public Integer getOrderID() {
        return orderID;
    }

    public void setOrderID(Integer orderID) {
        this.orderID = orderID;
    }

    public String getRecipientName() {
        return recipientName;
    }

    public void setRecipientName(String recipientName) {
        this.recipientName = recipientName;
    }

    public String getRecipientAddress() {
        return recipientAddress;
    }

    public void setRecipientAddress(String recipientAddress) {
        this.recipientAddress = recipientAddress;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Date getDeliveryDate() {
        return deliveryDate;
    }

    public void setDeliveryDate(Date deliveryDate) {
        this.deliveryDate = deliveryDate;
    }

    public short getOrderStatus() {
        return orderStatus;
    }

    public void setOrderStatus(short orderStatus) {
        this.orderStatus = orderStatus;
    }

    public Date getRecipientDOB() {
        return recipientDOB;
    }

    public void setRecipientDOB(Date recipientDOB) {
        this.recipientDOB = recipientDOB;
    }

    public BigDecimal getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(BigDecimal totalPrice) {
        this.totalPrice = totalPrice;
    }

    @XmlTransient
    public Collection<OrderDetails> getOrderDetailsCollection() {
        return orderDetailsCollection;
    }

    public void setOrderDetailsCollection(Collection<OrderDetails> orderDetailsCollection) {
        this.orderDetailsCollection = orderDetailsCollection;
    }

    public Customers getUsername() {
        return username;
    }

    public void setUsername(Customers username) {
        this.username = username;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (orderID != null ? orderID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Orders)) {
            return false;
        }
        Orders other = (Orders) object;
        return (this.orderID != null || other.orderID == null) && (this.orderID == null || this.orderID.equals(other.orderID));
    }

    @Override
    public String toString() {
        return "entities.Orders[ orderID=" + orderID + " ]";
    }

    public Short getStatus() {
        return status;
    }

    public void setStatus(Short status) {
        this.status = status;
    }
    
}
