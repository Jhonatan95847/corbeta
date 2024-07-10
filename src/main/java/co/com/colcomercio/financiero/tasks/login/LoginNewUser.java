package co.com.colcomercio.financiero.tasks.login;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import co.com.colcomercio.financiero.utils.DataGenerator;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.ensure.Ensure;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;


import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYACCOUNT;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginNewUser.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.*;
import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.SELECT_DEPRTAMENT_SAME;
import static co.com.colcomercio.financiero.utils.DataGenerator.DataGeneratorDate;

public class LoginNewUser implements Task {

    private final NewUser newUser;
    private DataGenerator dataGenerator;

    public LoginNewUser(NewUser newUser){this.newUser = newUser;}
    String username = DataGeneratorDate();
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_MYACCOUNT),
                //WaitUntil.the(TEXT_LOGIN, WebElementStateMatchers.()),
                Ensure.that(IsElementPresent.on(TEXT_LOGIN)).isTrue(),
                Ensure.that(IsElementPresent.on(TEXT_PLEASE_ID)).isTrue(),
                EnterText.intoField("alkosto" + username + "@gmail.com", EDITBOX_EMAIL),
                ClickOnElement.on(BUTTON_CONTINUE_LOGIN),
                //WaitUntil.the(EITBOX_NAME, WebElementStateMatchers.isClickable()),
                EnterText.intoField(newUser.getDataNewUsers().getName(),EITBOX_NAME),
                EnterText.intoField(newUser.getDataNewUsers().getLastname(),EITBOX_LASTNAME),
                EnterText.intoField(newUser.getDataNewUsers().getPhone(),EITBOX_PHONE),
                ClickOnElement.on(CHECK_CONDITIONS),
                ClickOnElement.on(BUTTON_CONTINUE_NEW)
                //WaitFor.seconds(5)
        );
    }
    public static LoginNewUser newRegistry(NewUser newUser) {
        return Tasks.instrumented(LoginNewUser.class, newUser);
    }
}
