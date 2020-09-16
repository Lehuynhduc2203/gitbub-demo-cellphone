/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Entity.Products;
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
@WebServlet(name = "UpdateActionServlet", urlPatterns = {"/Admin/UpdateActionServlet"})
public class UpdateActionServlet extends HttpServlet {

    @EJB
    private ProductsFacadeLocal productsFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String id = request.getParameter("id");

            Products pro = productsFacade.find(Integer.parseInt(id));

            if (pro.getAction().equals(true)) {
                Products pr = new Products();
                pr.setProductID(pro.getProductID());
                pr.setProductName(pro.getProductName());
                pr.setPrice(pro.getPrice());
                pr.setPromotionPrice(pro.getPromotionPrice());
                pr.setProductDescription(pro.getProductDescription());
                pr.setCategoryID(pro.getCategoryID());
                pr.setBrandID(pro.getBrandID());
                pr.setProductImage(pro.getProductImage());
                pr.setAction(false);
                productsFacade.edit(pr);
            } else if (pro.getAction().equals(false)) {
                Products pr = new Products();
                pr.setProductID(pro.getProductID());
                pr.setProductName(pro.getProductName());
                pr.setPrice(pro.getPrice());
                pr.setPromotionPrice(pro.getPromotionPrice());
                pr.setProductDescription(pro.getProductDescription());
                pr.setCategoryID(pro.getCategoryID());
                pr.setBrandID(pro.getBrandID());
                pr.setProductImage(pro.getProductImage());
                pr.setAction(true);
                productsFacade.edit(pr);
            }

            request.setAttribute("list", productsFacade.findAll());
            request.getRequestDispatcher("manageproduct.jsp").forward(request, response);
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
