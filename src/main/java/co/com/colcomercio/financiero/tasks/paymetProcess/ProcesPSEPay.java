package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.actions.SelectFromOptions;
import net.serenitybdd.screenplay.waits.WaitUntil;
//import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.PsePage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class ProcesPSEPay implements Task {
    private static final Logger logger = LogManager.getLogger(ProcesPSEPay.class);
    private final String resultado;

    public ProcesPSEPay(String resultado) {
        this.resultado = resultado;
    }
    //@Step("Proceso de pago mediante PSE")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("###########################PROCESO PAGO PSE#########################");
        actor.attemptsTo(
                WaitUntil.the(EDITBOX_EMAIL_PSE, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                EnterText.intoField("test@test.com",EDITBOX_EMAIL_PSE),
                Wait.withDuration(MICRO_TIME),
                ScrollToElement.to(BUTTON_IRBANCO_PSE),
                ClickOnElement.on(BUTTON_IRBANCO_PSE),
                WaitUntil.the(BUTTON_DEBUG_PSE, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                Wait.withDuration(MICRO_TIME),
                ScrollToElement.to(BUTTON_DEBUG_PSE),
                ClickOnElement.on(BUTTON_DEBUG_PSE),
                WaitUntil.the(EDITBOX_PROCESDATE, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                EnterText.intoField("26/08/2024",EDITBOX_PROCESDATE),
                SelectFromOptions.byVisibleText(resultado).from(SELECT_TRANSACTIONSTATE),
                EnterText.intoField("1234",EDITBOX_AUTORIZATION),
                ClickOnElement.on(BUTTON_CALL),
                Wait.withDuration(MICRO_TIME),
                ClickOnElement.on(BUTTON_RETURN_PRINCIPAL)
        );
    }
    public static ProcesPSEPay pay(String resultado){return Tasks.instrumented(ProcesPSEPay.class, resultado);}
}
