package co.com.colcomercio.financiero.tasks.productOptions;

import co.com.colcomercio.financiero.interactions.*;

import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class SelectQuantitiProduct implements Task {

    private static final Logger logger = LogManager.getLogger(SelectQuantitiProduct.class);

    private String cantidad;
    public SelectQuantitiProduct(String cantidad){
        this.cantidad = cantidad;
    }
    //@Step("Seleccionando la cantidad de productos")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("#############################SELECCIONANDO CANTIDAD############################");
        actor.attemptsTo(
                //Wait.withDuration(LOW_TIME),
                WaitUntil.the(BUTTON_ADD_CAR, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                ScrollToElement.to(BUTTON_ADD_CAR),
                ClickOnElement.on(SELECT_QUANTITY_UNO),
                ScrollToElement.to(SELECT_NUMBERONE.of(cantidad)),
                ClickOnElement.on(SELECT_NUMBERONE.of(cantidad)),
                Wait.withDuration(MICRO_TIME)
        );
    }

    public static SelectQuantitiProduct selectQuantity(String cantidad){
        return Tasks.instrumented(SelectQuantitiProduct.class, cantidad);
    }
}
