package co.com.colcomercio.financiero.tasks.login;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.models.UserEcomerce;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.actions.Enter;
import net.serenitybdd.screenplay.ensure.Ensure;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterPassPage.BUTTON_CONTINUE_PASS;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterPassPage.EDITBOX_PASSWORD;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterUserPage.*;
import static net.serenitybdd.screenplay.Tasks.instrumented;

public class Login implements Task {
    private boolean softLogin;
    private UserEcomerce userEcomerce;

    public Login(boolean softLogin, UserEcomerce userEcomerce){
        this.softLogin = softLogin;
        this.userEcomerce = userEcomerce;
    }

    public static Login inMyProfile(boolean flag, UserEcomerce userEcomerce) {
        return instrumented(Login.class, flag, userEcomerce);
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_MYACCOUNT),
                //WaitUntil.the(TEXT_LOGIN, WebElementStateMatchers.isClickable()),
                Ensure.that(IsElementPresent.on(TEXT_LOGIN)).isTrue(),
                Ensure.that(IsElementPresent.on(TEXT_PLEASE_ID)).isTrue(),
                Enter.theValue(userEcomerce.getEmail()).into(EDITBOX_EMAIL),
                ClickOnElement.on(BUTTON_CONTINUE_LOGIN),
                //WaitUntil.the(BUTTON_LOGIN_GOOGLE, WebElementStateMatchers.isClickable()),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_GOOGLE)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_FACEBOOK)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_WHATS)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_EMAILVAL)).isTrue(),
                Ensure.that(IsElementPresent.on(BUTTON_LOGIN_SMS)).isTrue(),
                Ensure.that(IsElementPresent.on(TEXT_FIND_ACOUNT)).isTrue(),
                ClickOnElement.on(BUTTON_LOGIN_MAIL),
                //WaitUntil.the(EDITBOX_PASSWORD, WebElementStateMatchers.isClickable()),
                Enter.theValue(userEcomerce.getPasswordEcomerce()).into(EDITBOX_PASSWORD),
                ClickOnElement.on(BUTTON_CONTINUE_PASS)
        );
    }
}


