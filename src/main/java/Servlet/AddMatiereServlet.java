package Servlet;

import java.io.IOException;

import Metier.Metier;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Matiere;

/**
 * Servlet implementation class AddMatiereServlet
 */
public class AddMatiereServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddMatiereServlet() {
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
		String intitule = request.getParameter("intitule");
		int prof = Integer.parseInt(request.getParameter("prof"));
		Matiere matiere = new Matiere(intitule,prof);
		String resultat = Metier.createMatiere(matiere);
		response.getWriter().println(resultat);
	}

}
