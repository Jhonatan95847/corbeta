package co.com.colcomercio.financiero.tasks.login;

import co.com.colcomercio.financiero.interactions.AddEmailLogin;
import co.com.colcomercio.financiero.interactions.AddPassLogin;

import co.com.colcomercio.financiero.models.users.Users;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;

//import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static net.serenitybdd.screenplay.Tasks.instrumented;

public class Login implements Task {
    private static final Logger logger = LogManager.getLogger(Login.class);

    public static Login inMyProfile( ) {
        return instrumented(Login.class);
    }

    //@Step("Iniciando sesión con un usuario registrado")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("####################INICIANDO SESION CON USUARIO REGISTRADO####################");
        actor.attemptsTo(
                AddEmailLogin.addEmail(),
                AddPassLogin.addPass()
        );
    }
}


