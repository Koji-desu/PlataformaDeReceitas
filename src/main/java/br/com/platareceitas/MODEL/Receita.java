package br.com.platareceitas.MODEL;

public class Receita {

    private String id;
    private String description;
    private String instructions;
    private int time;
    private String category;
    private String difficulty;
    private String image;

    public Receita(String receitaId, String receitaName, String receitaDescricao, String receitaInstrucoes, int receitaTempoPreparo, String receitaCategoria, String receitaNivelDificuldade) {
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getInstructions() {
        return instructions;
    }

    public void setInstructions(String instructions) {
        this.instructions = instructions;
    }

    public int getTime() {
        return time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDifficulty() {
        return difficulty;
    }

    public void setDifficulty(String difficulty) {
        this.difficulty = difficulty;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getId() {
        return id;
    }

    public Receita(String id, String name, String description, String instructions, int time, String category, String difficulty, String image) {
        this.id = id;
        this.description = description;
        this.instructions = instructions;
        this.time = time;
        this.category = category;
        this.difficulty = difficulty;
        this.image = image;
        this.name = name;
    }

    private String name;


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
