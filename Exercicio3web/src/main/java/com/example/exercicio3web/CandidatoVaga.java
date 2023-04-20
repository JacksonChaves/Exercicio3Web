package com.example.exercicio3web;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class CandidatoVaga {
    private String nome;
    private String idioma;
    private LocalDate data;
    private String[] habilidades;
    private DateTimeFormatter formatter;

    public CandidatoVaga(){
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        if(nome.equals("") || nome.length() < 2) {
            throw new RuntimeException("O campo não está devidadmente preenchido")
        }
        this.nome = nome;

    }

    public String getIdioma() {
        return idioma;
    }

    public void setIdioma(String idioma) {
        this.idioma = idioma;
    }

    public LocalDate getData() {
        return data;
    }

    public String getDataAssString() {
        return data;
    }

    public void setData(LocalDate data) {
        this.data = data;
    }

    public void setData(String data) {
        this.data = LocalDate.parse(data, formatter);
    }

    public String[] getHabilidades() {
        return habilidades;
    }

    public void setHabilidades(String[] habilidades) {
        this.habilidades = habilidades;
    }


}
