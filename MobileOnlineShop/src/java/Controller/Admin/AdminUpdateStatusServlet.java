/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Entity.Customers;
import Entity.Orders;
import SB.CustomersFacadeLocal;
import SB.OrdersFacadeLocal;
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
@WebServlet(name = "AdminUpdateStatusServlet", urlPatterns = {"/Admin/AdminUpdateStatusServlet"})
public class AdminUpdateStatusServlet extends HttpServlet {
    @EJB
    private CustomersFacadeLocal customersFacade;

    @EJB
    private OrdersFacadeLocal ordersFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            int id = Integer.parseInt(request.getParameter("id"));
            String email = request.getParameter("email");
            int total = Integer.parseInt(request.getParameter("total"));
            String status = request.getParameter("status");
            
            String shipname = request.getParameter("shipname");
            String orderdate = request.getParameter("orderdate");
            String shipaddress = request.getParameter("shipaddress");
            String shipphone = request.getParameter("shipphone");

            String shipnote = request.getParameter("shipnote");

            String expected = request.getParameter("expected");

            Orders od = new Orders();
            Customers cus = new Customers();
            od.setOrderID(id);
            od.setCustomerEmail(customersFacade.findEmailCustomer(email));
            od.setSubTotal(total);
            od.setShipName(shipname);
            od.setShipAddress(shipaddress);
            od.setOrderDate(orderdate);
            od.setShipPhone(shipphone);
            od.setShipNote(shipnote);
            od.setExpected(expected);
            od.setOrderState(status);

            ordersFacade.edit(od);
            

            request.getRequestDispatcher("AdminShowOrderServlet").forward(request, response);
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
