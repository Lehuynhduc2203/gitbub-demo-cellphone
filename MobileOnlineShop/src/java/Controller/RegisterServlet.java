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

/**
 *
 * @author Admin
 */
@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

    @EJB
    private CustomersFacadeLocal customersFacade;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            String gender = request.getParameter("gender");
            String pass = request.getParameter("pass");
            String conpass = request.getParameter("conpass");
            String address = request.getParameter("address");

            Customers cus = new Customers();

            if (fname.equals("")) {
                request.setAttribute("errorfname", "First Name can not be emty");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else if (lname.equals("")) {
                request.setAttribute("errorlname", "Last Name can not be emty");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else if (email.equals("")) {
                request.setAttribute("erroremail", "Email can not be emty");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else if (pass.equals("")) {
                request.setAttribute("errorpass", "Password Name can not be emty");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else if (conpass.equals("")) {
                request.setAttribute("errorconpass", "Confirm pass can not be emty");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else if (phone.equals("")) {
                request.setAttribute("errorphone", "Phone can not be emty");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else if (address.equals("")) {
                request.setAttribute("erroraddress", "Adress can not be emty");
                request.getRequestDispatcher("register.jsp").forward(request, response);
            } else if (pass.equals(conpass)) {
                cus.setEmail(email);
                cus.setFirstName(fname);
                cus.setLastName(lname);
                cus.setPassword(Encryption.MD5(pass));
                cus.setPhone(phone);
                cus.setGender(gender);
                cus.setAddress(address);

                customersFacade.create(cus);
                out.println("<script type=\"text/javascript\">");
                out.println("alert('You have create account go to login');");
                out.println("location='loginpage.jsp';");
                out.println("</script>");
            } else {
                request.setAttribute("errorpass", "Password and Confirm Password need to be match");
                request.getRequestDispatcher("register.jsp").forward(request, response);
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
