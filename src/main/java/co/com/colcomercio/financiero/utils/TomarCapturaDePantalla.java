package co.com.colcomercio.financiero.utils;

import net.serenitybdd.core.Serenity;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.annotations.Subject;


public class TomarCapturaDePantalla implements Task {

    @Override
    public <T extends Actor> void performAs(T actor) {
        Serenity.takeScreenshot();
    }

    @Subject("Toma una captura de pantalla en este punto")
    public static TomarCapturaDePantalla ahora() {
        return new TomarCapturaDePantalla();
    }
}
