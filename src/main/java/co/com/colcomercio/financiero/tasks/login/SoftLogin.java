package co.com.colcomercio.financiero.tasks.login;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.Wait;
import co.com.colcomercio.financiero.models.users.Users;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.actions.Enter;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.EDITBOX_EMAIL;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.SoftLoginPage.BUTTON_CONTINUE_SOFT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.SoftLoginPage.EDITBOX_EMAIL_SOFT;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static net.serenitybdd.screenplay.Tasks.instrumented;

public class SoftLogin implements Task {

    private final Users userEcomerce;
    private static final Logger logger = LogManager.getLogger(Login.class);


    public SoftLogin( Users userEcomerce){
        this.userEcomerce = userEcomerce;
    }

    public static SoftLogin inMyProfile( Users users) {
        return instrumented(SoftLogin.class, users);
    }
    @Step("Iniciando sesión con un usuario registrado como soft login")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("####################INICIANDO SESION CON USUARIO REGISTRADO SOFTLOGIN####################");
        actor.attemptsTo(
                Wait.withDuration(LOW_TIME),
                Enter.theValue(userEcomerce.getDataUsers().getEmail()).into(EDITBOX_EMAIL_SOFT),
                ClickOnElement.on(BUTTON_CONTINUE_SOFT)
        );
    }
}
