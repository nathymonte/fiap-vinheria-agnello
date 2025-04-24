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

@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        request.getRequestDispatcher("/signup.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String senha = request.getParameter("senha");
        String confirmarSenha = request.getParameter("confirmarSenha");
        String cpf = request.getParameter("cpf");
        String dataNascimento = request.getParameter("dataNascimento");
        String telefone = request.getParameter("telefone");
        boolean receberNewsletter = "on".equals(request.getParameter("newsletter"));
        boolean aceitaTermos = "on".equals(request.getParameter("termos"));
        
        if (nome == null || nome.isEmpty() || 
            email == null || email.isEmpty() || 
            senha == null || senha.isEmpty() ||
            confirmarSenha == null || confirmarSenha.isEmpty() ||
            cpf == null || cpf.isEmpty() ||
            dataNascimento == null || dataNascimento.isEmpty()) {
            
            request.setAttribute("error", "Todos os campos obrigatórios devem ser preenchidos");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
            return;
        }
        
        if (!senha.equals(confirmarSenha)) {
            request.setAttribute("error", "As senhas não coincidem");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
            return;
        }
        
        if (!aceitaTermos) {
            request.setAttribute("error", "Você deve aceitar os termos e condições");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
            return;
        }
        
        User user = userService.register(nome, email, senha, cpf, dataNascimento, telefone, receberNewsletter);
        
        if (user != null) {
            HttpSession session = request.getSession();
            session.setAttribute("user", user);
            
            response.sendRedirect("/index.jsp");
        } else {
            request.setAttribute("error", "Não foi possível criar a conta. O email ou CPF já pode estar em uso.");
            request.getRequestDispatcher("/signup.jsp").forward(request, response);
        }
    }
} 