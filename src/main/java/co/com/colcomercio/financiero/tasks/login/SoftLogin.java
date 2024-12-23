package co.com.colcomercio.financiero.tasks.login;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.Wait;
import co.com.colcomercio.financiero.models.users.Usuario;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.actions.Enter;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.loginPages.SoftLoginPage.BUTTON_CONTINUE_SOFT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.SoftLoginPage.EDITBOX_EMAIL_SOFT;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;
import static net.serenitybdd.screenplay.Tasks.instrumented;

public class SoftLogin implements Task {


    private static final Logger logger = LogManager.getLogger(SoftLogin.class);


    public static SoftLogin inMyProfile() {
        return instrumented(SoftLogin.class);
    }
    //@Step("Iniciando sesión con un usuario registrado como soft login")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("####################INICIANDO SESION CON USUARIO REGISTRADO SOFTLOGIN####################");
        Usuario usuario = actor.recall("usuario");
        actor.attemptsTo(
                Wait.withDuration(MICRO_TIME),
                Enter.theValue(usuario.getemail()).into(EDITBOX_EMAIL_SOFT),
                ClickOnElement.on(BUTTON_CONTINUE_SOFT)
        );
    }
}
