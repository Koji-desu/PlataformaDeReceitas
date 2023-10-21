package br.com.platareceitas.MODEL;

public class Receita {

    private String id;

    public String getId() {
        return id;
    }

    public Receita(String id, String name) {
        this.id = id;
        this.name = name;
    }

    private String name;

    public Receita(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
