/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Encry.Encryption;
import Entity.Customers;
import SB.CustomersFacadeLocal;
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
@WebServlet(name = "ChangePassword", urlPatterns = {"/ChangePassword"})
public class ChangePassword extends HttpServlet {

    @EJB
    private CustomersFacadeLocal customersFacade;

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
            String oldpass = request.getParameter("oldpass");
            String newpass = request.getParameter("newpass");
            String cfpass = request.getParameter("cfpass");

            HttpSession session = request.getSession();

            Customers cus = (Customers) session.getAttribute("customerLogin");

            if (Encryption.MD5(oldpass).equals(cus.getPassword())) {

                if (newpass.equals(cfpass)) {
                    if (oldpass.equals(newpass)) {
                        request.setAttribute("newpasserro", "The old password and the new password cannot be the same");
                        request.getRequestDispatcher("changepassword.jsp").forward(request, response);
                    }else if(newpass.length() > 6 || newpass.length() < 12){
                    request.setAttribute("newpasserro", "The password and the confirm password need to be greater than 6 and less than 12");
                        request.getRequestDispatcher("changepassword.jsp").forward(request, response);
                    }
                    else{
                    Customers customer = new Customers();
                    customer.setEmail(cus.getEmail());
                    customer.setPassword(Encryption.MD5(newpass));
                    customer.setFirstName(cus.getFirstName());
                    customer.setLastName(cus.getLastName());
                    customer.setGender(cus.getGender());
                    customer.setPhone(cus.getPhone());
                    customer.setAddress(cus.getAddress());
                    customersFacade.edit(customer);

                    session.removeAttribute("customerLogin");
                    session.setAttribute("customerLogin", customer);

                    out.println("<script type=\"text/javascript\">");
                    out.println("alert('You have changed your password');");
                    out.println("location='userinformation.jsp';");
                    out.println("</script>");
                    }

                } else {
                    request.setAttribute("cfpasserro", "Your new password and confirm password not match");
                    request.getRequestDispatcher("changepassword.jsp").forward(request, response);
                }
            } else {
                request.setAttribute("oldpasserro", "Your old password not match");
                request.getRequestDispatcher("changepassword.jsp").forward(request, response);
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
