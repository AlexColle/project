package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CtrlMain
 */
@WebServlet({"/CtrlMain", "/CorsiDiFormazione"})
public class CtrlMain extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public CtrlMain() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        visualizzaMenu(request, response);
    }

    private void visualizzaMenu(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        //Definizione di un oggetto della classeServletContext
        ServletContext oContesto = getServletContext();
        //Definizione di un oggetto per la pubblicazione della PGS
        RequestDispatcher oDispatcher = oContesto.getRequestDispatcher("/Applicazione/PgsMain.jsp");
        oDispatcher.forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // TODO Auto-generated method stub
        String controller = "";
        String valoreScelto = req.getParameter("rdoScelta");
        if (valoreScelto != null) {
            int valore = Integer.parseInt(valoreScelto);
            switch (valore) {
                case 0:
                    controller = "/CtrlArchivioDocente";
                    break;
                case 1:
                    controller = "/CtrlArchivioDiscente";
                    break;
                case 2:
                    controller = "/CtrlArchivioAula";
                    break;
                case 3:
                    controller = "/CtrlGestioneCorso";
                    break;
                case 4:
                    controller = "/CtrlRicercaCorsoPerDiscente";
                    break;
                case 5:
                    controller = "/CtrlRicercaCorsoPerDocente";
                    break;
                default:
                    visualizzaMenu(req, resp);
                    break;
            }

            //Definizione di un oggetto della classeServletContext
            //ServletContext oContesto = getServletContext();
            //Definizione di un oggetto per la pubblicazione della PGS
            //RequestDispatcher oDispatcher = oContesto.getRequestDispatcher(controller);
            //Pubblicazione
            //oDispatcher.forward(req, resp);
            getServletContext().getRequestDispatcher(controller).forward(req, resp);
        } else
            visualizzaMenu(req, resp);
    }

}
