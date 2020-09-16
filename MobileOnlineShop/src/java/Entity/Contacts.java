/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "Contacts")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Contacts.findAll", query = "SELECT c FROM Contacts c")
    , @NamedQuery(name = "Contacts.findByContactEmail", query = "SELECT c FROM Contacts c WHERE c.contactEmail = :contactEmail")
    , @NamedQuery(name = "Contacts.findByContactName", query = "SELECT c FROM Contacts c WHERE c.contactName = :contactName")
    , @NamedQuery(name = "Contacts.findByMessage", query = "SELECT c FROM Contacts c WHERE c.message = :message")})
public class Contacts implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ContactEmail")
    private String contactEmail;
    @Size(max = 100)
    @Column(name = "ContactName")
    private String contactName;
    @Size(max = 500)
    @Column(name = "Message")
    private String message;

    public Contacts() {
    }

    public Contacts(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactEmail() {
        return contactEmail;
    }

    public void setContactEmail(String contactEmail) {
        this.contactEmail = contactEmail;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (contactEmail != null ? contactEmail.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Contacts)) {
            return false;
        }
        Contacts other = (Contacts) object;
        if ((this.contactEmail == null && other.contactEmail != null) || (this.contactEmail != null && !this.contactEmail.equals(other.contactEmail))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Contacts[ contactEmail=" + contactEmail + " ]";
    }
    
}
