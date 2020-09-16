/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

import SB.AdminsFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 *
 * @author MXGC
 */
@WebServlet(name = "AdminLoginServlet", urlPatterns = {"/Admin/AdminLoginServlet"})
public class AdminLoginServlet extends HttpServlet {
    @EJB
    private AdminsFacadeLocal adminsFacade;

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
         //   String hash = "35454B055CC325EA1AF2126E27707052";
           String email = request.getParameter("email");
            String password = request.getParameter("pass");
            if (email.equals("") && password.equals("")) {
                request.setAttribute("error", "Email and Password can not be emty");
                request.getRequestDispatcher("loginpage.jsp").forward(request, response);
            } else if (email.equals("")) {
                
                request.setAttribute("error", "Email can not be emty");
                request.getRequestDispatcher("loginpage.jsp").forward(request, response);

            } else if (password.equals("")) {
                
                request.setAttribute("error", "Password can not be emty");
                request.getRequestDispatcher("loginpage.jsp").forward(request, response);
                
            }
            else{
            HttpSession session = request.getSession();
      //      String md5Hex = DigestUtils.md5Hex(password).toUpperCase();
      //   assertThat(md5Hex.equals(hash)).isTrue();
            session.setAttribute("adminsLogin", adminsFacade.checkLogin(email, password));
                
            response.sendRedirect("index.jsp");
        
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
