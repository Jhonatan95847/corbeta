package co.com.colcomercio.financiero.tasks.productOptions;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.BUTTON_ADD_CAR;
import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.AddCarPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class AddProduct implements Task {
    private static final Logger logger = LogManager.getLogger(AddProduct.class);
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##########################AGREGANDO PRODUCO#######################");

        actor.attemptsTo(
                WaitUntil.the(BUTTON_ADD_CAR, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ClickOnElement.on(BUTTON_ADD_CAR),
                Wait.withDuration(MICRO_TIME)
        );
        if(TEXT_GARANTIA.isVisibleFor(actor)){
            actor.attemptsTo(
                    ClickOnElement.on(CHECK_NO_GARANTIA)
            );
        }
        actor.attemptsTo(
                WaitUntil.the(BUTTON_GO_TO_PAY, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ClickOnElement.on(BUTTON_GO_TO_PAY)
                //ClickOnElement.on(BUTTON_GO_TO_PAY_DOS)
        );
    }
    public static AddProduct goToPay() {
        return Tasks.instrumented(AddProduct.class);
    }
}
