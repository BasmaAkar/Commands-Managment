package org.commandes.controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.commandes.dao.UtilisateurDao;
import org.commandes.entites.Utilisateur;




/**
 * Servlet implementation class Inscription
 */
@WebServlet("/Inscription")
public class Inscription extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@Inject private UtilisateurDao utilisateurDao;
       
    /**
     * @throws SQLException 
     * @throws ClassNotFoundException 
     * @see HttpServlet#HttpServlet()
     */
    public Inscription() throws ClassNotFoundException, SQLException {
        super();
        utilisateurDao = new UtilisateurDao();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String error = null;
		try {
		
		String nom = (String) request.getParameter("nom");
		String email = (String) request.getParameter("email");
		String adresse = (String) request.getParameter("adresse");
		String password = (String) request.getParameter("password");
		Utilisateur user = new Utilisateur(0, nom, password, adresse, email, 2); // ici 2 c'est a dire create par defaut un compte client et non admin 
		request.setAttribute("user", user);
		utilisateurDao.save(user);
		}catch(SQLException e) {
			e.printStackTrace();
			error = "t e-mail est déjà utilisé ";
			request.setAttribute("error", error);
		}
		if(error == null)
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		else
			this.getServletContext().getRequestDispatcher("/createAccount.jsp").forward(request, response);
	}
	



}
