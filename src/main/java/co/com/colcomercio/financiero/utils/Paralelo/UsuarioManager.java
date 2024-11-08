package co.com.colcomercio.financiero.utils.Paralelo;

import co.com.colcomercio.financiero.models.users.Usuario;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import java.io.FileReader;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class UsuarioManager {
    private static BlockingQueue<Usuario> usuariosDisponibles;

    static {
        try {
            // Leer el archivo JSON y cargar los usuarios
            Gson gson = new Gson();
            FileReader reader = new FileReader("src/test/resources/data/usuarios.json");
            List<Usuario> usuarios = gson.fromJson(reader, new TypeToken<List<Usuario>>(){}.getType());
            reader.close();

            // Inicializar la BlockingQueue con los usuarios cargados
            usuariosDisponibles = new LinkedBlockingQueue<>(usuarios);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Método para obtener un usuario de la cola
    public static Usuario obtenerUsuario() throws InterruptedException {
        return usuariosDisponibles.take(); // Tomar un usuario de la cola
    }

    // Método para devolver un usuario a la cola
    public static void liberarUsuario(Usuario usuario) {
        usuariosDisponibles.offer(usuario); // Devolver el usuario a la cola
    }
}