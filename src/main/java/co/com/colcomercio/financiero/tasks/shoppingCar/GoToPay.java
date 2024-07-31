package co.com.colcomercio.financiero.tasks.shoppingCar;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.TotalInfo.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;

public class GoToPay implements Task {
    private static final Logger logger = LogManager.getLogger(GoToPay.class);
    @Step("Ir a pagar desde el carrito")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("###########################IR A PAGAR DESDE EL CARRITO#########################");

        actor.attemptsTo(
                Wait.withDuration(LOW_TIME),
                //WaitUntil.the(BUTTON_GOTO_PAY, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                ScrollToElement.to(BUTTON_GOTO_PAY),
                ClickOnElement.on(BUTTON_GOTO_PAY)
        );
        if (TEXTO_ESCRIBE_CORREO.isVisibleFor(actor)){
            actor.attemptsTo(
                Wait.withDuration(LOW_TIME),
                ScrollToElement.to(BUTTON_CONTINUE_SOFT),
                ClickOnElement.on(BUTTON_CONTINUE_SOFT)
            );
        }
    }

    public static GoToPay pay() {
        return Tasks.instrumented(GoToPay.class);
    }
}
