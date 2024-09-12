package co.com.colcomercio.financiero.utils.Paralelo;

import co.com.colcomercio.financiero.models.users.Usuario;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;

public class LiberarUsuario implements Task {

    public static LiberarUsuario delActor() {
        return new LiberarUsuario();
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        // Recuperar el usuario de la sesión
        Usuario usuario = actor.recall("usuario");
        // Liberar el usuario, devolviéndolo a la cola
        UsuarioManager.liberarUsuario(usuario);
    }
}
