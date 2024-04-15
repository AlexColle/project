package model.dao;

import model.session.Aula;

public class AulaService extends AbstractService<AulaDAO, Aula> {

    @Override
    public AulaDAO createDAO() {
        // TODO Auto-generated method stub
        return new AulaDAO();
    }
}
