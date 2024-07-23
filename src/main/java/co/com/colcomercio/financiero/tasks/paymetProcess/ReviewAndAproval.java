package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.Wait;
import co.com.colcomercio.financiero.tasks.shoppingCar.GoToPay;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ReviewAndApprovalPage.BUTTON_CONTINIAR_APROVADO;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;

public class ReviewAndAproval implements Task {
    private static final Logger logger = LogManager.getLogger(ReviewAndAproval.class);
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("###########################IR A PAGAR DESDE EL CARRITO#########################");

        actor.attemptsTo(
                Wait.withDuration(LOW_TIME),
                WaitUntil.the(BUTTON_CONTINIAR_APROVADO, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                ClickOnElement.on(BUTTON_CONTINIAR_APROVADO)
        );
    }
    public static ReviewAndAproval review(){return Tasks.instrumented(ReviewAndAproval.class);}

}
