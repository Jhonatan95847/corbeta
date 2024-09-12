package co.com.colcomercio.financiero.interactions;

import co.com.colcomercio.financiero.models.users.Usuario;
import co.com.colcomercio.financiero.utils.Paralelo.AsignarUsuario;
import co.com.colcomercio.financiero.utils.TomarCapturaDePantalla;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.Enter;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginRegisterUserPage.BUTTON_LOGIN_MAIL;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;

public class AddEmailLogin implements Interaction {

    @Override
    public <T extends Actor> void performAs(T actor) {

        actor.attemptsTo(AsignarUsuario.alActor());
        Usuario usuario = actor.recall("usuario");
        actor.attemptsTo(
                Wait.withDuration(MICRO_TIME),
                TomarCapturaDePantalla.ahora(),
                ClickOnElement.on(BUTTON_MYACCOUNT),
                WaitUntil.the(EDITBOX_EMAIL, WebElementStateMatchers.isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                //Ensure.that(IsElementPresent.on(TEXT_LOGIN)).isTrue(),
                //Ensure.that(IsElementPresent.on(TEXT_PLEASE_ID)).isTrue(),
                Enter.theValue(usuario.getemail()).into(EDITBOX_EMAIL),
                ScrollToElement.to(BUTTON_CONTINUE_LOGIN_NEW),
                ClickOnElement.on(BUTTON_CONTINUE_LOGIN_NEW),
                Wait.withDuration(MICRO_TIME),
                ScrollToElement.to(BUTTON_LOGIN_MAIL)
        );
    }
    public static AddEmailLogin addEmail(){return Tasks.instrumented(AddEmailLogin.class);}
}
