package co.com.colcomercio.financiero.interactions;

import co.com.colcomercio.financiero.models.users.Users;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.Enter;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.BUTTON_CONTINUE_LOGIN;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterUserPage.BUTTON_LOGIN_MAIL;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;

public class AddEmailLogin implements Interaction {
    private final Users userEcomerce;

    public AddEmailLogin(Users userEcomerce) {
        this.userEcomerce = userEcomerce;
    }
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                Wait.withDuration(MICRO_TIME),
                ClickOnElement.on(BUTTON_MYACCOUNT),
                WaitUntil.the(EDITBOX_EMAIL, WebElementStateMatchers.isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                //Ensure.that(IsElementPresent.on(TEXT_LOGIN)).isTrue(),
                //Ensure.that(IsElementPresent.on(TEXT_PLEASE_ID)).isTrue(),
                Enter.theValue(userEcomerce.getDataUsers().getEmail()).into(EDITBOX_EMAIL),
                //Wait.withDuration(2),
                ScrollToElement.to(BUTTON_CONTINUE_LOGIN),
                ClickOnElement.on(BUTTON_CONTINUE_LOGIN),
                Wait.withDuration(MICRO_TIME),
                ScrollToElement.to(BUTTON_LOGIN_MAIL)
        );
    }
    public static AddEmailLogin addEmail(Users userEcomerce){return Tasks.instrumented(AddEmailLogin.class, userEcomerce);}
}
