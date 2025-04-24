package br.edu.fiap.ideaseeders.vinheria.controller;

import java.io.IOException;

import br.edu.fiap.ideaseeders.vinheria.model.User;
import br.edu.fiap.ideaseeders.vinheria.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/signin")
public class SigninServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("/signin.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String senha = request.getParameter("password");
        boolean remember = "on".equals(request.getParameter("remember"));
        
        if (email == null || email.isEmpty() || senha == null || senha.isEmpty()) {
            request.setAttribute("error", "Email e senha são obrigatórios");
            request.getRequestDispatcher("/signin.jsp").forward(request, response);
            return;
        }
        
        User user = userService.login(email, senha);
        
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            
            if (remember) {
                session.setMaxInactiveInterval(7 * 24 * 60 * 60);
            }
            
            response.sendRedirect("/index.jsp");
        } else {
            request.setAttribute("error", "Email ou senha inválidos");
            request.getRequestDispatcher("/signin.jsp").forward(request, response);
        }
    }
} 