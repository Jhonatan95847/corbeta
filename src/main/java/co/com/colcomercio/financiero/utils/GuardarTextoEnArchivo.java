package co.com.colcomercio.financiero.utils;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

public class GuardarTextoEnArchivo {

    public static void guardarTexto(String texto, String rutaArchivo) {
        try {
            Files.write(Paths.get(rutaArchivo), texto.getBytes(), StandardOpenOption.CREATE, StandardOpenOption.APPEND);
        } catch (IOException e) {
            e.printStackTrace();  // Manejo de errores
        }
    }
}