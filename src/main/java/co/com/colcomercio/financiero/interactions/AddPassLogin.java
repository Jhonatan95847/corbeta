package co.com.colcomercio.financiero.interactions;

import co.com.colcomercio.financiero.models.users.Users;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.Enter;
import net.serenitybdd.screenplay.ensure.Ensure;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
//import net.thucydides.core.annotations.Step;

import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterPassPage.BUTTON_CONTINUE_PASS;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterPassPage.EDITBOX_PASSWORD;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterUserPage.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterUserPage.BUTTON_LOGIN_MAIL;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;

public class AddPassLogin implements Interaction {
    private final Users userEcomerce;

    public AddPassLogin(Users userEcomerce) {
        this.userEcomerce = userEcomerce;
    }
    //@Step("Agregando contraseña para iniciar sesion")
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                WaitUntil.the(BUTTON_LOGIN_GOOGLE, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_GOOGLE)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_FACEBOOK)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_WHATS)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_EMAILVAL)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_SMS)).isTrue(),
                //Ensure.that(IsElementPresent.on(TEXT_FIND_ACOUNT)).isTrue(),
                WaitUntil.the(BUTTON_LOGIN_MAIL, WebElementStateMatchers.isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ScrollToElement.to(BUTTON_LOGIN_MAIL),
                ClickOnElement.on(BUTTON_LOGIN_MAIL),
                WaitUntil.the(EDITBOX_PASSWORD, WebElementStateMatchers.isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                Enter.theValue(userEcomerce.getDataUsers().getPasswordMail()).into(EDITBOX_PASSWORD),
                Wait.withDuration(MICRO_TIME),
                ScrollToElement.to(BUTTON_CONTINUE_PASS),
                ClickOnElement.on(BUTTON_CONTINUE_PASS),
                Wait.withDuration(MICRO_TIME)
        );
    }

    public static AddPassLogin addPass(Users userEcomerce){return Tasks.instrumented(AddPassLogin.class, userEcomerce);}
}
