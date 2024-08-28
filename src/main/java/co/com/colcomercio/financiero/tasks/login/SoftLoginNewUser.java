package co.com.colcomercio.financiero.tasks.login;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
//import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.EDITBOX_EMAIL;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.SoftLoginPage.BUTTON_CONTINUE_SOFT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.SoftLoginPage.EDITBOX_EMAIL_SOFT;
import static co.com.colcomercio.financiero.utils.DataGenerator.DataGeneratorDate;

public class SoftLoginNewUser implements Task {
    private static final Logger logger = LogManager.getLogger(LoginNewUser.class);

    String username = DataGeneratorDate();
    public static SoftLoginNewUser newRegistry() {
        return Tasks.instrumented(SoftLoginNewUser.class);
    }

    //@Step("Iniciando sesión con un usuario nuevo con softlogin")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("####################INICIANDO SESION CON USUARIO NUEVO SOFTLOGIN####################");
        actor.attemptsTo(
                EnterText.intoField("alkosto" + username + "@gmail.com", EDITBOX_EMAIL_SOFT),
                ClickOnElement.on(BUTTON_CONTINUE_SOFT)
        );
    }
}
