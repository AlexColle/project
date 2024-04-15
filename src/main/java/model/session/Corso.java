package model.session;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Corso")
public class Corso {
    private Docente docente=new Docente();


    @Column(name="idCorso")
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int chiave;


    @Column(name="nome")
    private String nome;

    @Column(name="durata")
    private int durata;

    public Corso() {
        this.nome = "";
        this.durata = 0;
    }

    public int getChiave() {
        return chiave;
    }

    public void setChiave(int chiave) {
        this.chiave = chiave;
    }

    public int getDurata() {
        return durata;
    }

    public void setDurata(int durata) {
        this.durata = durata;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }


}

