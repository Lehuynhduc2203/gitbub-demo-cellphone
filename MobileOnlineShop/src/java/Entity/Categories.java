/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Admin
 */
@Entity
@Table(name = "Categories")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Categories.findAll", query = "SELECT c FROM Categories c")
    , @NamedQuery(name = "Categories.findByCategoriesID", query = "SELECT c FROM Categories c WHERE c.categoriesID = :categoriesID")
    , @NamedQuery(name = "Categories.findByCategoryName", query = "SELECT c FROM Categories c WHERE c.categoryName = :categoryName")
    , @NamedQuery(name = "Categories.findByCategoryImage", query = "SELECT c FROM Categories c WHERE c.categoryImage = :categoryImage")})
public class Categories implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @NotNull
    @Column(name = "CategoriesID")
    private Integer categoriesID;
    @Size(max = 100)
    @Column(name = "CategoryName")
    private String categoryName;
    @Size(max = 100)
    @Column(name = "CategoryImage")
    private String categoryImage;
    @OneToMany(mappedBy = "categoryID")
    private Collection<Products> productsCollection;

    public Categories() {
    }

    public Categories(Integer categoriesID) {
        this.categoriesID = categoriesID;
    }

    public Integer getCategoriesID() {
        return categoriesID;
    }

    public void setCategoriesID(Integer categoriesID) {
        this.categoriesID = categoriesID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryImage() {
        return categoryImage;
    }

    public void setCategoryImage(String categoryImage) {
        this.categoryImage = categoryImage;
    }

    @XmlTransient
    public Collection<Products> getProductsCollection() {
        return productsCollection;
    }

    public void setProductsCollection(Collection<Products> productsCollection) {
        this.productsCollection = productsCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (categoriesID != null ? categoriesID.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Categories)) {
            return false;
        }
        Categories other = (Categories) object;
        if ((this.categoriesID == null && other.categoriesID != null) || (this.categoriesID != null && !this.categoriesID.equals(other.categoriesID))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.Categories[ categoriesID=" + categoriesID + " ]";
    }
    
}
