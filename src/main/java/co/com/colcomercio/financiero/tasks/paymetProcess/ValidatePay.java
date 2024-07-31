package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import static net.serenitybdd.screenplay.Tasks.instrumented;

public class ValidatePay implements Task {
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                //Wait.withDuration(6),
                //ClickOnElement.on(BUTTON_CONTINUE_DISCOUNT),
                //Wait.withDuration(10),
                //ClickOnElement.on(BUTTON_CLOSE_DISCOUNT),
                //Ensure.that(IsElementPresent.on(VALIDATE_SUCESS_PAY)).isTrue(),
                Wait.withDuration(10)
                );
    }
    public static ValidatePay validate() {
        return instrumented(ValidatePay.class);
    }

}
