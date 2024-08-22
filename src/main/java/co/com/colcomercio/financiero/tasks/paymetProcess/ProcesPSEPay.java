package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.SelectFromOptions;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.PsePage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;

public class ProcesPSEPay implements Task {
    private final String resultado;

    public ProcesPSEPay(String resultado) {
        this.resultado = resultado;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                Wait.withDuration(10),
                EnterText.intoField("test@test.com",EDITBOX_EMAIL_PSE),
                ClickOnElement.on(BUTTON_IRBANCO_PSE),
                Wait.withDuration(MICRO_TIME),
                ScrollToElement.to(BUTTON_DEBUG_PSE),
                ClickOnElement.on(BUTTON_DEBUG_PSE),
                Wait.withDuration(MICRO_TIME),
                EnterText.intoField("21/08/2024",EDITBOX_PROCESDATE),
                SelectFromOptions.byVisibleText(resultado).from(SELECT_TRANSACTIONSTATE),
                EnterText.intoField("1234",EDITBOX_AUTORIZATION),
                ClickOnElement.on(BUTTON_CALL),
                Wait.withDuration(MICRO_TIME),
                ClickOnElement.on(BUTTON_RETURN_PRINCIPAL)
        );
    }
    public static ProcesPSEPay pay(String resultado){return Tasks.instrumented(ProcesPSEPay.class, resultado);}
}
