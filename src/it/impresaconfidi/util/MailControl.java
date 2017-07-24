package it.impresaconfidi.util;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/mail")

public class MailControl extends HttpServlet {

	private static final long serialVersionUID = 1L;

	public MailControl(){
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/page/index.jsp");
		dispatcher.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//TODO: sistema i conti correnti
		String action = request.getParameter("action");
		if(action.equalsIgnoreCase("mail-preventivo")){
			String nome = request.getParameter("nome");
			String cognome = request.getParameter("cognome");
			String email = request.getParameter("email");
			String telefono = request.getParameter("telefono");
			String provincia = request.getParameter("provincia");
			String città = request.getParameter("città");
			String via = request.getParameter("via");
			boolean isStartup = Boolean.parseBoolean(request.getParameter("isStartup"));
			String ragione_sociale_società = request.getParameter("ragione_sociale_società");
			String conti_correnti_società = request.getParameter("conti_correnti_società");
			String tipo_prestito = request.getParameter("tipo_prestito");
			Float importo_prestito = Float.parseFloat(request.getParameter("importo_prestito"));
			int durata_prestito = Integer.parseInt(request.getParameter("durata_prestito"));
			String motivazione_prestito = request.getParameter("motivazione_prestito");
			String messaggio = request.getParameter("messaggio");
			System.out.println(nome+cognome+email+telefono+provincia+città+via+isStartup+ragione_sociale_società+
					conti_correnti_società+tipo_prestito+importo_prestito+durata_prestito+motivazione_prestito+messaggio);
		}
	}
}
