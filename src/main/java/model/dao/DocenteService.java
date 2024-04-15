package model.dao;

import model.session.Discente;
import model.session.Docente;

public class DocenteService extends AbstractService<DocenteDAO, Docente>{

	@Override
	public DocenteDAO createDAO() {
		// TODO Auto-generated method stub
		return new DocenteDAO();
	}

	public static class DiscenteService extends AbstractService<DiscenteDAO, Discente>{

		@Override
		public DiscenteDAO createDAO() {
			// TODO Auto-generated method stub
			return new DiscenteDAO();
		}
	}
}
