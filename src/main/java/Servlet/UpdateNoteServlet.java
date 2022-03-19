package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import Metier.Metier;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Note;


/**
 * Servlet implementation class UpdateNoteServlet
 */
public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public UpdateNoteServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out=response.getWriter();		
		String login = request.getParameter("login");
		String matiere = request.getParameter("matiere");
		double note = Double.parseDouble(request.getParameter("note"));

		
		Note n =new Note();
		

		n.setLogin_etu(login);
		n.setMatiere(matiere);
		n.setNote(note);
		
		
		int status= Metier.updateNote(n);
		
		if(status>0){
			response.sendRedirect("blogAssistant.jsp");
		}else{
			out.println("Sorry! unable to update record");
		}
		
		out.close();
	}

}
