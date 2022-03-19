package Servlet;

import java.io.IOException;

import Metier.Metier;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Etudiant;
import model.EtudiantDAO;

/**
 * Servlet implementation class AddEtudiantServlet
 */
public class AddEtudiantServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddEtudiantServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		String nom = request.getParameter("name");
		int classe = Integer.parseInt(request.getParameter("classe"));
		Etudiant etu = new Etudiant(login,password,nom,classe);
		String resultat = EtudiantDAO.createStudent(etu);
		response.getWriter().println(resultat);
	}

}
