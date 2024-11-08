package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.selectOptions.SelectPayMethod;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;

import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.BancolombiaButtonPage.*;
import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.SelectPayMethod.SELECT_CREDITCARD_METHOD;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class PayBancolombiaButton implements Task {
    private static final Logger logger = LogManager.getLogger(PayBancolombiaButton.class);
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################PAGANDO MEDIANTE BOTON BANCOLOMBIA##############################");
            actor.attemptsTo(
                    Wait.withDuration(MICRO_TIME),
                    WaitUntil.the(SELECT_CREDITCARD_METHOD, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                    SelectPayMethod.payMethod("Botón Bancolombia"),
                    ClickOnElement.on(BUTTON_CONTINUAR_BANCOLOMBIA)
            );
    }
    public static PayBancolombiaButton pay(){return Tasks.instrumented(PayBancolombiaButton.class);}
}
