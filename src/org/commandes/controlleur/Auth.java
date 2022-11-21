package org.commandes.controlleur;

import java.io.IOException;
import java.sql.SQLException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.commandes.dao.UtilisateurDao;
import org.commandes.entites.Utilisateur;



/**
 * Servlet implementation class Auth
 */
@WebServlet("/Auth")
public class Auth extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Inject private UtilisateurDao utilisateurDao;
	
    public Auth() throws ClassNotFoundException, SQLException {
        super();
        utilisateurDao = new UtilisateurDao();
    }
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// POUR LOGIN 
		String error = null;
		String errorVide = null;
		HttpSession session = request.getSession();
		try {
			// get parameters 
		Utilisateur user = new Utilisateur();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		user = utilisateurDao.getByEmail(email);
		request.setAttribute("user", user);
		session.setAttribute("user", user);
		
		if(user != null)   // C'est a dire les données exisstent dans la base de données 
		{
			if(password.equals(user.getPasswordUtil()))
				this.getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);
			else
			{
				error = " Svp le mot de passe est incorrect ";
				request.setAttribute("error", error);
				this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
			}
		}
		else
		{
			errorVide = "E-mail incorrect";
			request.setAttribute("errorVide", errorVide);
			this.getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
		}
	} catch (SQLException e) {
		e.printStackTrace();
	}
}
		
	}



