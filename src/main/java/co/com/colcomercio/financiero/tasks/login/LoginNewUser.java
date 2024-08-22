package co.com.colcomercio.financiero.tasks.login;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginNewUser.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.*;
import static co.com.colcomercio.financiero.utils.DataGenerator.DataGeneratorDate;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class LoginNewUser implements Task {
    private static final Logger logger = LogManager.getLogger(LoginNewUser.class);

    private final NewUser newUser;

    public LoginNewUser(NewUser newUser){this.newUser = newUser;}
    String username = DataGeneratorDate();
    @Step("Iniciando sesión con un usuario nuevo")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("####################INICIANDO SESION CON USUARIO NUEVO####################");
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_MYACCOUNT),
                WaitUntil.the(EDITBOX_EMAIL, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                //WaitUntil.the(TEXT_LOGIN, WebElementStateMatchers.()),
                //Ensure.that(IsElementPresent.on(TEXT_LOGIN)).isTrue(),
                //Ensure.that(IsElementPresent.on(TEXT_PLEASE_ID)).isTrue(),
                EnterText.intoField("alkosto" + username + "@gmail.com", EDITBOX_EMAIL),
                ScrollToElement.to(BUTTON_CONTINUE_LOGIN),
                ClickOnElement.on(BUTTON_CONTINUE_LOGIN),
                WaitUntil.the(EITBOX_NAME, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                EnterText.intoField(newUser.getDataNewUsers().getName(),EITBOX_NAME),
                EnterText.intoField(newUser.getDataNewUsers().getLastname(),EITBOX_LASTNAME),
                EnterText.intoField(newUser.getDataNewUsers().getPhone(),EITBOX_PHONE),
                ScrollToElement.to(CHECK_CONDITIONS),
                ClickOnElement.on(CHECK_CONDITIONS),
                ScrollToElement.to(BUTTON_CONTINUE_NEW),
                ClickOnElement.on(BUTTON_CONTINUE_NEW),
                Wait.withDuration(MICRO_TIME)
        );
    }
    public static LoginNewUser newRegistry(NewUser newUser) {
        return Tasks.instrumented(LoginNewUser.class, newUser);
    }
}
