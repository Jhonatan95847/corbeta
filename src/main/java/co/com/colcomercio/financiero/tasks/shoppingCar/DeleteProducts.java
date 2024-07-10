package co.com.colcomercio.financiero.tasks.shoppingCar;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.BUTTON_MYCAR;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.ActionsOnCar.BUTTON_DELETE_PRODUCT;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.ActionsOnCar.VALIDATE_NAME_PRODUCT;

public class DeleteProducts implements Task {

    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                //WaitUntil.the(BUTTON_MYCAR, WebElementStateMatchers.isClickable()),
                ClickOnElement.on(BUTTON_MYCAR)
        );
        if (VALIDATE_NAME_PRODUCT.isVisibleFor(actor)){
            do {
                actor.attemptsTo(
                        ClickOnElement.on(BUTTON_DELETE_PRODUCT)
                );
            }while (VALIDATE_NAME_PRODUCT.isVisibleFor(actor));
        }
    }
    public static DeleteProducts delete() {
        return Tasks.instrumented(DeleteProducts.class);
    }
}
