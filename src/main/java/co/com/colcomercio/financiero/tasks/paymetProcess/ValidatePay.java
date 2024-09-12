package co.com.colcomercio.financiero.tasks.paymetProcess;


import co.com.colcomercio.financiero.interactions.Wait;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import co.com.colcomercio.financiero.utils.Paralelo.LiberarUsuario;
import net.serenitybdd.screenplay.ensure.Ensure;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;

import static co.com.colcomercio.financiero.userinterfaces.PaymentConfirmation.*;
import static net.serenitybdd.screenplay.Tasks.instrumented;

public class ValidatePay implements Task {
    private final String estado;

    public ValidatePay(String estado) {
        this.estado = estado;
    }
    //@Step("Validando resultado de pago")
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                Wait.withDuration(20)
                //TakeScreenshot.at("target/site/serenity")


                );
        switch (estado) {
            case "OK":
                actor.attemptsTo(
                        //ClickOnElement.on(BUTTON_CONTINUE_DISCOUNT),
                        // Wait.withDuration(10),
                        //ClickOnElement.on(BUTTON_CLOSE_DISCOUNT)
                        Ensure.that(IsElementPresent.on(VALIDATE_SUCESS_PAY)).isTrue()
                        //Wait.withDuration(10)
                );
                break;
            case "PENDING":
                actor.attemptsTo(
                        Ensure.that(IsElementPresent.on(VALIDATE_PENDING_PAY)).isTrue()
                        //Wait.withDuration(10)
                );
                break;
            case "FAILED":
                actor.attemptsTo(
                        Ensure.that(IsElementPresent.on(VALIDATE_FAILED_PAY)).isTrue()
                        //(Wait.withDuration(10)
                );
                break;
            default:
                //error();
                break;
        }
        //actor.attemptsTo(LiberarUsuario.delActor());
    }

    public static ValidatePay validate(String estado) {
        return instrumented(ValidatePay.class, estado);
    }

}
