package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import net.serenitybdd.screenplay.ensure.Ensure;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;

import static co.com.colcomercio.financiero.userinterfaces.PaymentConfirmation.*;
import static co.com.colcomercio.financiero.userinterfaces.loginPages.LoginPage.TEXT_PLEASE_ID;
import static net.serenitybdd.screenplay.Tasks.instrumented;

public class ValidatePay implements Task {
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                Wait.withDuration(10),
                ClickOnElement.on(BUTTON_CONTINUE_DISCOUNT),
                Wait.withDuration(10),
                ClickOnElement.on(BUTTON_CLOSE_DISCOUNT),
                Ensure.that(IsElementPresent.on(VALIDATE_SUCESS_PAY)).isTrue(),
                Wait.withDuration(10)
                );
    }
    public static ValidatePay validate() {
        return instrumented(ValidatePay.class);
    }

}
