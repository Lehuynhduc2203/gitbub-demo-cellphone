/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Entity.Brands;
import SB.BrandsFacadeLocal;
import SB.CategoriesFacadeLocal;
import SB.CustomersFacadeLocal;
import SB.OrdersFacadeLocal;
import SB.ProductsFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "searchbyname", urlPatterns = {"/Admin/searchbyname"})
public class searchbyname extends HttpServlet {
    @EJB
    private OrdersFacadeLocal ordersFacade;
    @EJB
    private CustomersFacadeLocal customersFacade;

    @EJB
    private ProductsFacadeLocal productsFacade;

    @EJB
    private CategoriesFacadeLocal categoriesFacade;
    @EJB
    private BrandsFacadeLocal brandsFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String action = request.getParameter("action");
            String namesearch = request.getParameter("namesearch");
            switch (action) {
                case "brand":
                    request.setAttribute("list", brandsFacade.findByBrandName(namesearch));
                    request.getRequestDispatcher("managebrand.jsp").forward(request, response);
                case "category":

                    request.setAttribute("list", categoriesFacade.findByCategoryName(namesearch));
                    request.getRequestDispatcher("managecategory.jsp").forward(request, response);
                case "product":
                    request.setAttribute("list", productsFacade.findByProductName(namesearch));
                    request.getRequestDispatcher("manageproduct.jsp").forward(request, response);
                case "customer":
                    request.setAttribute("list", customersFacade.findByCustomerEmail(namesearch));
                    request.getRequestDispatcher("managecustomer.jsp").forward(request, response);
                case "status":
                    if (namesearch.equals("All")) {
                        request.setAttribute("list", ordersFacade.findAll());
                    request.getRequestDispatcher("manageorder.jsp").forward(request, response);
                    }else{
                    request.setAttribute("list", ordersFacade.findByStatus(namesearch));
                    request.getRequestDispatcher("manageorder.jsp").forward(request, response);
                    }
                 case "activi":
                    if (namesearch.equals("All")) {
                        request.setAttribute("list", productsFacade.findAll());
                    request.getRequestDispatcher("manageproduct.jsp").forward(request, response);
                    }else{
                    request.setAttribute("list", productsFacade.findAcitionTest(Boolean.parseBoolean(namesearch)));
                    request.getRequestDispatcher("manageproduct.jsp").forward(request, response);
                    }
                default:
                    System.out.printf("Ok");
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
