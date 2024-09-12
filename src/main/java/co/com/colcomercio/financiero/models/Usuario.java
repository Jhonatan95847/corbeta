package co.com.colcomercio.financiero.models;

public class Usuario {
    private String email;
    private String password;

    public Usuario(String nombre, String password) {
        this.email = nombre;
        this.password = password;
    }

    public String getemail() {
        return email;
    }

    public String getPassword() {
        return password;
    }
}