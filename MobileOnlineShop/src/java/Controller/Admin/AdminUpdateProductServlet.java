/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Entity.Brands;
import Entity.Categories;
import Entity.Products;
import SB.BrandsFacadeLocal;
import SB.CategoriesFacadeLocal;
import SB.ProductsFacadeLocal;
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
@WebServlet(name = "AdminUpdateProductServlet", urlPatterns = {"/Admin/AdminUpdateProductServlet"})
public class AdminUpdateProductServlet extends HttpServlet {
    @EJB
    private CategoriesFacadeLocal categoriesFacade;
    @EJB
    private BrandsFacadeLocal brandsFacade;
    @EJB
    private ProductsFacadeLocal productsFacade;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int id = Integer.parseInt(request.getParameter("id"));
            String name = request.getParameter("name");
            int price = Integer.parseInt(request.getParameter("price"));
            int promotion = Integer.parseInt(request.getParameter("promotion"));  
            String description = request.getParameter("description");
            int cateid = Integer.parseInt(request.getParameter("cateid"));
            int brandid = Integer.parseInt(request.getParameter("brandid"));
            String image = request.getParameter("image");
            String action = request.getParameter("action");
            Categories cate = categoriesFacade.find(cateid);
            Brands brand = brandsFacade.find(brandid);
        Products pr = new Products();
        pr.setProductID(id);
        pr.setProductName(name);
        pr.setPrice(price);    
        pr.setPromotionPrice(promotion);
        pr.setProductDescription(description);
        pr.setCategoryID(cate);
        pr.setBrandID(brand);
        pr.setProductImage(image);
        pr.setAction(Boolean.parseBoolean(action));
        productsFacade.edit(pr);
        
            request.getRequestDispatcher("AdminShowProductServlet").forward(request, response); 
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
