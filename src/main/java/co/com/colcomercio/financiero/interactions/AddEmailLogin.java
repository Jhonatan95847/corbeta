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

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.BUTTON_CONTINUE_LOGIN;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterUserPage.BUTTON_LOGIN_MAIL;

public class AddEmailLogin implements Interaction {
    private final Users userEcomerce;

    public AddEmailLogin(Users userEcomerce) {
        this.userEcomerce = userEcomerce;
    }
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_MYACCOUNT),
                WaitUntil.the(TEXT_LOGIN, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                Ensure.that(IsElementPresent.on(TEXT_LOGIN)).isTrue(),
                Ensure.that(IsElementPresent.on(TEXT_PLEASE_ID)).isTrue(),
                Enter.theValue(userEcomerce.getDataUsers().getEmail()).into(EDITBOX_EMAIL),
                ScrollToElement.to(BUTTON_CONTINUE_LOGIN),
                ClickOnElement.on(BUTTON_CONTINUE_LOGIN),
                ScrollToElement.to(BUTTON_LOGIN_MAIL)
        );
    }
    public static AddEmailLogin addEmail(Users userEcomerce){return Tasks.instrumented(AddEmailLogin.class, userEcomerce);}
}
