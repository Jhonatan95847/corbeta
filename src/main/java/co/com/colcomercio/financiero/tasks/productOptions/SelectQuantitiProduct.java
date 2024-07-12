package co.com.colcomercio.financiero.tasks.productOptions;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.WaitForElementIsClickeable;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.*;

public class SelectQuantitiProduct implements Task {

    private static final Logger logger = LogManager.getLogger(SelectQuantitiProduct.class);

    private String cantidad;
    public SelectQuantitiProduct(String cantidad){
        this.cantidad = cantidad;
    }
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("########################SELECCIONANDO CANTIDAD########################");
        WaitForElementIsClickeable.with().duration(10);
        actor.attemptsTo(
                //WaitUntil.the(SELECT_QUANTITY_UNO, WebElementStateMatchers.isClickable()),
                ScrollToElement.to(SELECT_QUANTITY_UNO),
                ClickOnElement.on(SELECT_QUANTITY_UNO),
                ClickOnElement.on(SELECT_NUMBERONE.of(cantidad))
        );
    }

    public static SelectQuantitiProduct selectQuantity(String cantidad){
        return Tasks.instrumented(SelectQuantitiProduct.class, cantidad);
    }
}
