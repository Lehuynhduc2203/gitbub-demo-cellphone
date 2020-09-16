/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller.Admin;

//import Encry.Encryption;
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
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
@WebServlet(name = "LoginAdminServlet", urlPatterns = {"/Admin/LoginAdminServlet"})
public class LoginAdminServlet extends HttpServlet {

    @EJB
    private AdminsFacadeLocal adminsFacade;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String email = request.getParameter("email");
            String pass = request.getParameter("pass");
            
            
            
           
            if (email.equals("") && pass.equals("")) {
                request.setAttribute("error", "Email and Password can not be emty");
                request.getRequestDispatcher("loginpage.jsp").forward(request, response);
            } else if (email.equals("")) {
                
                request.setAttribute("error", "Email can not be emty");
                request.getRequestDispatcher("loginpage.jsp").forward(request, response);

            } else if (pass.equals("")) {
                
                request.setAttribute("error", "Password can not be emty");
                request.getRequestDispatcher("loginpage.jsp").forward(request, response);
                
            }else if (adminsFacade.checkLogin(email, pass) == null) {
                request.setAttribute("error", "Password or Email in valid!");
                request.getRequestDispatcher("loginpage.jsp").forward(request, response);
            } else {
                 HttpSession session = request.getSession();
            
                session.setAttribute("adminLogin", adminsFacade.checkLogin(email, pass));

                request.getRequestDispatcher("index.jsp").forward(request, response);
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
