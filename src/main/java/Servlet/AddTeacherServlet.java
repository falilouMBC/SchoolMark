package Servlet;

import java.io.IOException;

import Metier.Metier;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Enseignant;

/**
 * Servlet implementation class AddTeacherServlet
 */
public class AddTeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddTeacherServlet() {
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
		
		String loginProf = request.getParameter("login");
		String pwdProf = request.getParameter("password");
		String nomComplet = request.getParameter("nom");
		Enseignant enseignant = new Enseignant(loginProf, pwdProf, nomComplet);
		String resultat1 = Metier.createTeacher(enseignant);
		response.getWriter().println(resultat1);
	}

}
