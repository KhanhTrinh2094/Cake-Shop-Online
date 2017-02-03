
package entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "Admins")
@XmlRootElement
public class Admins implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "Username")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "Password")
    private String password;
    @Basic(optional = false)
    @NotNull
    @Column(name = "Status")
    private short status;
    @Basic(optional = false)
    @NotNull
    @Column(name = "AdminRole")
    private short adminRole;

    public Admins() {
    }

    public Admins(String username) {
        this.username = username;
    }

    public Admins(String username, String password, short status, short adminRole) {
        this.username = username;
        this.password = password;
        this.status = status;
        this.adminRole = adminRole;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public short getStatus() {
        return status;
    }

    public void setStatus(short status) {
        this.status = status;
    }

    public short getAdminRole() {
        return adminRole;
    }

    public void setAdminRole(short adminRole) {
        this.adminRole = adminRole;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (username != null ? username.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        if (!(object instanceof Admins)) {
            return false;
        }
        Admins other = (Admins) object;
        return (this.username != null || other.username == null) && (this.username == null || this.username.equals(other.username));
    }

    @Override
    public String toString() {
        return "entities.Admin[ username=" + username + " ]";
    }
    
}
