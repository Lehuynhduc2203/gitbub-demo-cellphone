/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import Entity.Admins;
import SB.AdminsFacadeLocal;
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
@WebServlet(name = "AdminUpdateProfileServlet", urlPatterns = {"/Admin/AdminUpdateProfileServlet"})
public class AdminUpdateProfileServlet extends HttpServlet {
    @EJB
    private AdminsFacadeLocal adminsFacade;

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
           String email = request.getParameter("email");
           String fullname = request.getParameter("fullname");
           String pass = request.getParameter("pass");
           Admins ad= new Admins();
           ad.setEmail(email);
           ad.setPassword(pass);
           ad.setFullName(fullname);
           
           adminsFacade.edit(ad);
            out.println("<script type=\"text/javascript\">");
                out.println("alert('You have changed your fullname success');");
                out.println("location='viewprofile.jsp';");
                out.println("</script>");
    //       request.setAttribute("OKname", "Update Success");
    //       out.printf("Update FullName Success ",fullname);
    //       request.getRequestDispatcher("viewprofile.jsp").forward(request, response);
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
