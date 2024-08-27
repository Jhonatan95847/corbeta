package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ReviewAndApprovalPage.BUTTON_CONTINIAR_APROVADO;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;

public class ReviewAndAproval implements Task {
    private static final Logger logger = LogManager.getLogger(ReviewAndAproval.class);
    @Step("Revisar y aprovar")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("###########################REVISAR Y APROVAR#########################");

        actor.attemptsTo(

                Wait.withDuration(MICRO_TIME),
                ScrollToElement.to(BUTTON_CONTINIAR_APROVADO),
                WaitUntil.the(BUTTON_CONTINIAR_APROVADO, WebElementStateMatchers.isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ClickOnElement.on(BUTTON_CONTINIAR_APROVADO)
        );
    }
    public static ReviewAndAproval review(){return Tasks.instrumented(ReviewAndAproval.class);}

}
