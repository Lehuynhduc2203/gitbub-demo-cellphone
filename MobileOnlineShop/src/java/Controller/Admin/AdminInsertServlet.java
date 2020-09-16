/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Encry.Encryption;
import Entity.Brands;
import Entity.Categories;
import Entity.Customers;
import Entity.Products;
import SB.BrandsFacadeLocal;
import SB.CategoriesFacadeLocal;
import SB.CustomersFacadeLocal;
import SB.ProductsFacadeLocal;
import com.sun.xml.ws.security.impl.policy.Constants;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author MXGC
 */
@WebServlet(name = "AdminInsertServlet", urlPatterns = {"/Admin/AdminInsertServlet"})
public class AdminInsertServlet extends HttpServlet {

    @EJB
    private ProductsFacadeLocal productsFacade;
    @EJB
    private CustomersFacadeLocal customersFacade;
    @EJB
    private CategoriesFacadeLocal categoriesFacade;
    @EJB
    private BrandsFacadeLocal brandsFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");

            switch (action) {
                case "insertbrand":
                    String name = request.getParameter("name");
                    String image = request.getParameter("image");
                    String description = request.getParameter("description");

                    Brands br = new Brands();
                    br.setBrandID(10);
                    br.setBrandName(name);
                    br.setBrandImage(image);
                    br.setBrandDescription(description);

                    brandsFacade.create(br);
                    request.setAttribute("list", brandsFacade.findAll());
                    request.getRequestDispatcher("AdminShowBrandServlet").forward(request, response);
                    break;
                case "insertcategory":

                    String catename = request.getParameter("catename");
                    String cateimage = request.getParameter("cateimage");

                    Categories ca = new Categories();
                    ca.setCategoriesID(3);
                    ca.setCategoryName(catename);
                    ca.setCategoryImage(cateimage);

                    categoriesFacade.create(ca);
                    request.setAttribute("list", categoriesFacade.findAll());
                    request.getRequestDispatcher("AdminShowCategoryServlet").forward(request, response);
                    break;
                case "insertcustomer":

                    String email = request.getParameter("email");
                    String pass = request.getParameter("password");
                    String fname = request.getParameter("fname");
                    String lname = request.getParameter("lname");
                    String gender = request.getParameter("gender");
                    String phone = request.getParameter("phone");
                    String address = request.getParameter("address");

                    Customers cus = new Customers();
                    cus.setEmail(email);
                    cus.setPassword(Encryption.MD5(pass));
                    cus.setFirstName(fname);
                    cus.setLastName(lname);
                    cus.setGender(gender);
                    cus.setPhone(phone);
                    cus.setAddress(address);
                    customersFacade.create(cus);
                    request.getRequestDispatcher("AdminShowCustomerServlet").forward(request, response);
                    break;
                case "insertproduct":
                    String namepro = request.getParameter("name");
                    int price = Integer.parseInt(request.getParameter("price"));
                    int promotion = Integer.parseInt(request.getParameter("promotion"));
                    String descriptionpro = request.getParameter("description");
                    int cateid = Integer.parseInt(request.getParameter("cateid"));
                    int brandid = Integer.parseInt(request.getParameter("brandid"));
                    String imagepro = request.getParameter("image");
                    String action1 = request.getParameter("action");
                    Categories cate = categoriesFacade.find(cateid);
                    Brands brand = brandsFacade.find(brandid);

                    Products pr = new Products();
                    pr.setProductID(10);
                    pr.setProductName(namepro);
                    pr.setPrice(price);
                    pr.setPromotionPrice(promotion);
                    pr.setProductDescription(descriptionpro);
                    pr.setCategoryID(cate);
                    pr.setBrandID(brand);
                    pr.setProductImage(imagepro);
                    pr.setAction(Boolean.getBoolean(action1));
                    productsFacade.create(pr);

                    request.getRequestDispatcher("AdminShowProductServlet").forward(request, response);
                    break;
                    default:
                        out.print("ok");
                        break;
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
