package model.session;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Discente")
public class Discente {


    @Column(name="iddiscente")
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int chiave;

    @Column(name="cognome")
    private String cognome;

    @Column(name="nome")
    private String nome;

    public Discente() {
        this.nome = "";
        this.cognome = "";
    }

    public int getChiave() {
        return chiave;
    }

    public void setChiave(int chiave) {
        this.chiave = chiave;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
}
