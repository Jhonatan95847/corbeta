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

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYCAR;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.ActionsOnCar.BUTTON_DELETE_PRODUCT;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.ActionsOnCar.VALIDATE_NAME_PRODUCT;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MEDIUM_TIME;

public class DeleteProducts implements Task {
    private static final Logger logger = LogManager.getLogger(DeleteProducts.class);
    @Step("Borrando productos desde el carrito")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("#########################BORRANDO PRODUCTOS DEL CARRITO########################");

        actor.attemptsTo(
                Wait.withDuration(LOW_TIME),
                ClickOnElement.on(BUTTON_MYCAR),
                Wait.withDuration(LOW_TIME)
                //ScrollToPosition.to(0,100)
        );


            while (VALIDATE_NAME_PRODUCT.isVisibleFor(actor)){
                actor.attemptsTo(
                        ScrollToElement.to(BUTTON_DELETE_PRODUCT),
                        ClickOnElement.on(BUTTON_DELETE_PRODUCT),
                        Wait.withDuration(MEDIUM_TIME)
                );
            }

    }
    public static DeleteProducts delete() {
        return Tasks.instrumented(DeleteProducts.class);
    }
}
