package co.com.colcomercio.financiero.utils;

import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.List;

import co.com.colcomercio.financiero.models.Usuario;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.File;
import java.io.IOException;

public class UsuarioPool {

    private static BlockingQueue<Usuario> usuarioQueue;

    static {
        try {
            // Carga los usuarios desde el archivo JSON
            ObjectMapper mapper = new ObjectMapper();
            Usuario[] usuarios = mapper.readValue(new File("src/test/resources/data/usuarios.json"), Usuario[].class);
            usuarioQueue = new LinkedBlockingQueue<>(List.of(usuarios));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    // Obtener un usuario disponible
    public static Usuario obtenerUsuario() throws InterruptedException {
        return usuarioQueue.take();
    }

    // Devolver el usuario al pool
    public static void liberarUsuario(Usuario usuario) {
        usuarioQueue.offer(usuario);
    }}