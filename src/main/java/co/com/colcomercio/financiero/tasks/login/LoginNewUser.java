package co.com.colcomercio.financiero.tasks.login;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import co.com.colcomercio.financiero.utils.DataGenerator;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.ensure.Ensure;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginNewUser.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.*;
import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.SELECT_DEPRTAMENT_SAME;
import static co.com.colcomercio.financiero.utils.DataGenerator.DataGeneratorDate;

public class LoginNewUser implements Task {
    private static final Logger logger = LogManager.getLogger(LoginNewUser.class);

    private final NewUser newUser;
    private DataGenerator dataGenerator;

    public LoginNewUser(NewUser newUser){this.newUser = newUser;}
    String username = DataGeneratorDate();
    @Step("Iniciaando sesión con un usuario nuevo")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("####################INICIANDO SESION CON USUARIO REGISTRADO####################");
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_MYACCOUNT),
                //WaitUntil.the(TEXT_LOGIN, WebElementStateMatchers.()),
                Ensure.that(IsElementPresent.on(TEXT_LOGIN)).isTrue(),
                Ensure.that(IsElementPresent.on(TEXT_PLEASE_ID)).isTrue(),
                EnterText.intoField("alkosto" + username + "@gmail.com", EDITBOX_EMAIL),
                ClickOnElement.on(BUTTON_CONTINUE_LOGIN),
                WaitUntil.the(EITBOX_NAME, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                EnterText.intoField(newUser.getDataNewUsers().getName(),EITBOX_NAME),
                EnterText.intoField(newUser.getDataNewUsers().getLastname(),EITBOX_LASTNAME),
                EnterText.intoField(newUser.getDataNewUsers().getPhone(),EITBOX_PHONE),
                ClickOnElement.on(CHECK_CONDITIONS),
                ScrollToElement.to(BUTTON_CONTINUE_NEW),
                ClickOnElement.on(BUTTON_CONTINUE_NEW)
                //WaitFor.seconds(5)
        );
    }
    public static LoginNewUser newRegistry(NewUser newUser) {
        return Tasks.instrumented(LoginNewUser.class, newUser);
    }
}
