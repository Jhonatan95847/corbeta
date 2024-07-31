package co.com.colcomercio.financiero.tasks.login;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.models.users.Users;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.actions.Enter;
import net.serenitybdd.screenplay.ensure.Ensure;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterPassPage.BUTTON_CONTINUE_PASS;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterPassPage.EDITBOX_PASSWORD;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterUserPage.*;
import static net.serenitybdd.screenplay.Tasks.instrumented;

public class Login implements Task {
    private final Users userEcomerce;
    private static final Logger logger = LogManager.getLogger(Login.class);


    public Login( Users userEcomerce){
        this.userEcomerce = userEcomerce;
    }

    public static Login inMyProfile( Users users) {
        return instrumented(Login.class, users);
    }

    @Step("Iniciando sesión con un usuario registrado")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("####################INICIANDO SESION CON USUARIO REGISTRADO####################");
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_MYACCOUNT),
                WaitUntil.the(TEXT_LOGIN, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                Ensure.that(IsElementPresent.on(TEXT_LOGIN)).isTrue(),
                Ensure.that(IsElementPresent.on(TEXT_PLEASE_ID)).isTrue(),
                Enter.theValue(userEcomerce.getDataUsers().getEmail()).into(EDITBOX_EMAIL),
                ScrollToElement.to(BUTTON_CONTINUE_LOGIN),
                ClickOnElement.on(BUTTON_CONTINUE_LOGIN),
                ScrollToElement.to(BUTTON_LOGIN_MAIL),
                WaitUntil.the(BUTTON_LOGIN_GOOGLE, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_GOOGLE)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_FACEBOOK)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_WHATS)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_EMAILVAL)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_SMS)).isTrue(),
                Ensure.that(IsElementPresent.on(TEXT_FIND_ACOUNT)).isTrue(),
                WaitUntil.the(BUTTON_LOGIN_MAIL, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                ClickOnElement.on(BUTTON_LOGIN_MAIL),
                WaitUntil.the(EDITBOX_PASSWORD, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                Enter.theValue(userEcomerce.getDataUsers().getPasswordMail()).into(EDITBOX_PASSWORD),
                ScrollToElement.to(BUTTON_CONTINUE_PASS),
                ClickOnElement.on(BUTTON_CONTINUE_PASS)
        );
    }
}


