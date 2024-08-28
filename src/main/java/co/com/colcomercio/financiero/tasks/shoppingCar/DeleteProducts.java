package co.com.colcomercio.financiero.tasks.shoppingCar;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
//import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYCAR;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.ActionsOnCar.BUTTON_DELETE_PRODUCT;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.ActionsOnCar.VALIDATE_NAME_PRODUCT;
import static co.com.colcomercio.financiero.utils.WaitingTime.*;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class DeleteProducts implements Task {
    private static final Logger logger = LogManager.getLogger(DeleteProducts.class);
    //@Step("Borrando productos desde el carrito")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("#########################BORRANDO PRODUCTOS DEL CARRITO########################");

        actor.attemptsTo(
                WaitUntil.the(BUTTON_MYCAR, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ClickOnElement.on(BUTTON_MYCAR),
                Wait.withDuration(MICRO_TIME)
        );
            while (VALIDATE_NAME_PRODUCT.isVisibleFor(actor)){
                actor.attemptsTo(
                        ScrollToElement.to(BUTTON_DELETE_PRODUCT),
                        ClickOnElement.on(BUTTON_DELETE_PRODUCT),
                        Wait.withDuration(5)
                );
            }
    }
    public static DeleteProducts delete() {
        return Tasks.instrumented(DeleteProducts.class);
    }
}
