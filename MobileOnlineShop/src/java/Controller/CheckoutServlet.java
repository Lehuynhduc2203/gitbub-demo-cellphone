/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Customers;
import Entity.Orders;
import Entity.OrdersDetails;
import SB.OrdersDetailsFacadeLocal;
import SB.OrdersFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
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
@WebServlet(name = "CheckoutServlet", urlPatterns = {"/CheckoutServlet"})
public class CheckoutServlet extends HttpServlet {

    @EJB
    private OrdersDetailsFacadeLocal ordersDetailsFacade;

    @EJB
    private OrdersFacadeLocal ordersFacade;

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
            String nametxt = request.getParameter("fullnametxt");
            String phonetxt = request.getParameter("phonetxt");
            String addresstxt = request.getParameter("addresstxt");
            String notetxt = request.getParameter("notetxt");

            HttpSession session = request.getSession();

            Date date = new Date();
            
            DateFormat df1 = new SimpleDateFormat("dd/MM/yyyy");
            
            Date dt = new Date();
            Calendar c = Calendar.getInstance();
            c.setTime(dt);
            c.add(Calendar.DATE, 7);
            dt = c.getTime();
            Customers cus = (Customers) session.getAttribute("customerLogin");

            if (cus == null) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('You need login to check out');");
                out.println("location='loginpage.jsp';");
                out.println("</script>");
            } else {
                if (nametxt.equals("")) {
                    request.setAttribute("erroname", "Full Name can not be emty");
                    request.getRequestDispatcher("checkout.jsp").forward(request, response);
                } else if (phonetxt.equals("")) {
                    request.setAttribute("errophone", "Phone can not be emty");
                    request.getRequestDispatcher("checkout.jsp").forward(request, response);
                } else if (addresstxt.equals("")) {
                    request.setAttribute("erroaddress", "Address can not be emty");
                    request.getRequestDispatcher("checkout.jsp").forward(request, response);
                } else {

                    Orders orders = (Orders) session.getAttribute("orders");

                    List<OrdersDetails> listItem = (List<OrdersDetails>) session.getAttribute("ordersitems");

                    Customers customer = (Customers) session.getAttribute("customerLogin");

                    Orders order = new Orders();
                    order.setCustomerEmail(customer);
                    order.setSubTotal(orders.getSubTotal());
                    order.setOrderID(3);
                    order.setShipName(nametxt);
                    order.setShipAddress(addresstxt);
                    order.setShipPhone(phonetxt);
                    order.setShipNote(notetxt);
                    order.setOrderDate(df1.format(date));
                    order.setOrderState("Processing");
                    order.setExpected(df1.format(dt));
                    ordersFacade.create(order);

                    for (OrdersDetails item : listItem) {
                        OrdersDetails orr = new OrdersDetails();
                        orr.setOrderID(order);
                        orr.setOrdersDetailsID(10);
                        orr.setProductID(item.getProductID());
                        orr.setPrice(item.getPrice());
                        orr.setQuantity(item.getQuantity());
                        orr.setTotalPrice(item.getTotalPrice());
                        ordersDetailsFacade.create(orr);
                    }

                    session.removeAttribute("orders");
                    session.removeAttribute("ordersitems");
                    response.sendRedirect("checkoutsucces.jsp");
                }
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
