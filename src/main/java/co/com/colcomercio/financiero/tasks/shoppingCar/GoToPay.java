package co.com.colcomercio.financiero.tasks.shoppingCar;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.TotalInfo.BUTTON_GOTO_PAY;

public class GoToPay implements Task {
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_GOTO_PAY)
        );
    }

    public static GoToPay pay() {
        return Tasks.instrumented(GoToPay.class);
    }
}
