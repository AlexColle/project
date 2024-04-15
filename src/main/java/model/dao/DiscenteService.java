package model.dao;

import model.session.Discente;

public class DiscenteService extends AbstractService<DiscenteDAO, Discente> {

    @Override
    public DiscenteDAO createDAO() {
        // TODO Auto-generated method stub
        return new DiscenteDAO();
    }
}