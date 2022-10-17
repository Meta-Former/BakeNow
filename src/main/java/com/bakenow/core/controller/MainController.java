/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.bakenow.core.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@WebServlet(name = "MainController", urlPatterns = {"/MainController"})
public class MainController extends HttpServlet {

    private static final String OH_SNAP = "/WEB-INF/oh-snap.jsp";

    //TODO?: read these from file?
    private static final String ACT_NAV_BLOG_HOME = "NavToBlogHome";
//    private static final String DEST_NAV_BLOG_HOME = "/WEB-INF/home.jsp";
    private static final String DEST_NAV_BLOG_HOME = "RenderBlogHomeController";
    private static final String ACT_NAV_LOGIN = "NavToLogin";
    private static final String DEST_NAV_LOGIN = "/WEB-INF/login.jsp";
    private static final String ACT_NAV_REGISTER = "NavToRegister";
    private static final String DEST_NAV_REGISTER = "/WEB-INF/register.jsp";
    private static final String ACT_NAV_VIEW_RECIPE = "NavToViewRecipe";
    private static final String DEST_NAV_VIEW_RECIPE = "/WEB-INF/recipes/view-recipe.jsp";
    private static final String ACT_NAV_CREATE_RECIPE = "NavToCreateRecipe";
    private static final String DEST_NAV_CREATE_RECIPE = "/WEB-INF/recipes/create-recipe.jsp";
    private static final String ACT_NAV_EDIT_RECIPE = "NavToEditRecipe";
    private static final String DEST_NAV_EDIT_RECIPE = "/WEB-INF/recipes/edit-recipe.jsp";
    
    private static final String ACT_NAV_MARKETPLACE = "NavToMarketplace";
    private static final String DEST_NAV_MARKETPLACE = "/WEB-INF/marketplace.jsp";
    private static final String ACT_NAV_CART = "NavToCart";
    private static final String DEST_NAV_CART = "/WEB-INF/marketplace/cart.jsp";

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
        String dest = OH_SNAP;

        try {
            String action = request.getParameter("action");
            switch (action) {
                case ACT_NAV_BLOG_HOME:
                    dest = DEST_NAV_BLOG_HOME;
                    break;
                case ACT_NAV_LOGIN:
                    dest = DEST_NAV_LOGIN;
                    break;
                case ACT_NAV_REGISTER:
                    dest = DEST_NAV_REGISTER;
                    break;
                case ACT_NAV_VIEW_RECIPE:
                    dest = DEST_NAV_VIEW_RECIPE;
                    break;
                case ACT_NAV_CREATE_RECIPE:
                    dest = DEST_NAV_CREATE_RECIPE;
                    break;
                case ACT_NAV_EDIT_RECIPE:
                    dest = DEST_NAV_EDIT_RECIPE;
                    break;

                case ACT_NAV_MARKETPLACE:
                    dest = DEST_NAV_MARKETPLACE;
                    break;
                case ACT_NAV_CART:
                    dest = DEST_NAV_CART;
                    break;
                default:
                    dest = OH_SNAP;
                //TODO: config error handler pages (e.g. 404)
            }
        } catch (Exception ex) {
//            Logger.getLogger().log();
        } finally {
            request.getRequestDispatcher(dest).forward(request, response);
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
