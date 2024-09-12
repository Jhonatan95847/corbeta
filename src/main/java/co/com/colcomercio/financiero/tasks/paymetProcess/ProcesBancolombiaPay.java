package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.*;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.BancolombiaButtonPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;

public class ProcesBancolombiaPay implements Task {
    private static final Logger logger = LogManager.getLogger(ProcesBancolombiaPay.class);
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("###########################PAGAR CON BANCOLOMBIA#########################");
        actor.attemptsTo(
                Wait.withDuration(MICRO_TIME),
                WaitUntil.the(BUTTON_CLIENTE_PERSONAS, WebElementStateMatchers.isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ClickOnElement.on(BUTTON_CLIENTE_PERSONAS),
                EnterText.intoField("ussbx10ae", EDIT_BOX_USUARIO_BANCOLOMBIA),
                ClickOnElement.on(BUTTON_CONTINUE),
                EnterKey.toLogin(),
                Wait.withDuration(5),
                EnterDynamicKey.toValidateLogin(),
                Wait.withDuration(5),
                SelectAccount.toPay(),
                ClickOnElement.on(BUTTON_REGRESAR)

        );
    }
    public static ProcesBancolombiaPay payBancolombia(){return Tasks.instrumented(ProcesBancolombiaPay.class);}
}
