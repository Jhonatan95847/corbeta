package co.com.colcomercio.financiero.utils.Paralelo;

import co.com.colcomercio.financiero.models.Usuario;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;

public class AsignarUsuario implements Task {

    public static AsignarUsuario alActor() {
        return new AsignarUsuario();
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        try {
            // Obtener un usuario disponible de la cola
            Usuario usuario = UsuarioManager.obtenerUsuario();
            // Almacenar el usuario en la sesión del actor (Serenity session)
            actor.remember("usuario", usuario);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
