package co.com.colcomercio.financiero.tasks.productOptions;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.tasks.SelectProduct;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;

import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.ActionsOnProducrPage.BUTTON_ADD_CAR;
import static co.com.colcomercio.financiero.userinterfaces.selectedProductPages.AddCarPage.*;

public class AddProduct implements Task {
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                //WaitUntil.the(BUTTON_ADD_CAR, WebElementStateMatchers.isClickable()),
                ClickOnElement.on(BUTTON_ADD_CAR)
        );
        if(TEXT_GARANTIA.isVisibleFor(actor)){
            actor.attemptsTo(
                    ClickOnElement.on(CHECK_NO_GARANTIA)
            );
        }
        actor.attemptsTo(
                //WaitUntil.the(BUTTON_GO_TO_PAY, WebElementStateMatchers.isClickable()),
                ClickOnElement.on(BUTTON_GO_TO_PAY)
        );
    }
    public static AddProduct goToPay() {
        return Tasks.instrumented(AddProduct.class);
    }
}