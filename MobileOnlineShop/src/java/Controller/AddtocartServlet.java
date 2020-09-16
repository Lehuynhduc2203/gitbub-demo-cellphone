/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Orders;
import Entity.OrdersDetails;
import Entity.Products;
import SB.ProductsFacadeLocal;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
@WebServlet(name = "AddtocartServlet", urlPatterns = {"/AddtocartServlet"})
public class AddtocartServlet extends HttpServlet {

    @EJB
    private ProductsFacadeLocal productsFacade;

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
        int quantity = 1;
        int id;
        HttpSession session = request.getSession();
        if (request.getParameter("productId") != null) {
            id = Integer.parseInt(request.getParameter("productId"));
            Products product = productsFacade.find(id);
            if (product != null) {
                if (request.getParameter("quantity") != null) {
                    quantity = Integer.parseInt(request.getParameter("quantity"));
                }
                if (session.getAttribute("orders") == null) {
                    Orders orders = new Orders();
                    List<OrdersDetails> listItem = new ArrayList<OrdersDetails>();
                    OrdersDetails item = new OrdersDetails();
                    item.setQuantity(quantity);
                    item.setProductID(product);
                    if (product.getPromotionPrice().equals(0)) {
                        item.setPrice(product.getPrice());
                    } else {
                        item.setPrice(product.getPromotionPrice());
                    }

                    item.setTotalPrice(item.getPrice() * quantity);
                    listItem.add(item);
                    orders.setSubTotal(item.getPrice());
                    session.setAttribute("orders", orders);
                    session.setAttribute("ordersitems", listItem);
                } else {
                    Orders orders = (Orders) session.getAttribute("orders");
                    List<OrdersDetails> listItem = (List<OrdersDetails>) session.getAttribute("ordersitems");
                    boolean check = false;
                    for (OrdersDetails item : listItem) {
                        if (item.getProductID().getProductID() == id) {
                            item.setQuantity(item.getQuantity() + quantity);
                            if (product.getPromotionPrice().equals(0)) {
                                item.setPrice(product.getPrice());
                            } else {
                                item.setPrice(product.getPromotionPrice());
                            }

                            item.setTotalPrice(item.getQuantity() * item.getPrice());
                            orders.setSubTotal(orders.getSubTotal() + item.getPrice());
                            check = true;
                        }
                    }
                    if (check == false) {
                        OrdersDetails item = new OrdersDetails();
                        item.setQuantity(quantity);
                        item.setProductID(product);
                        if (product.getPromotionPrice().equals(0)) {
                            item.setPrice(product.getPrice());
                        } else {
                            item.setPrice(product.getPromotionPrice());
                        }

                        item.setTotalPrice(item.getPrice());
                        orders.setSubTotal(orders.getSubTotal() + item.getPrice());

                        listItem.add(item);

                    }
                    session.setAttribute("ordersitems", listItem);
                    session.setAttribute("orders", orders);
                }
            }

            response.sendRedirect(session.getAttribute("rediPage").toString());
        } else {
            response.sendRedirect(session.getAttribute("rediPage").toString());

        }
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
