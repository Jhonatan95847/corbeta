package co.com.colcomercio.financiero.tasks.shoppingCar;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.TotalInfo.BUTTON_GOTO_PAY;

public class GoToPay implements Task {
    private static final Logger logger = LogManager.getLogger(GoToPay.class);
    @Step("Ir a pagar desde el carrito")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("###########################IR A PAGAR DESDE EL CARRITO#########################");

        actor.attemptsTo(
                WaitUntil.the(BUTTON_GOTO_PAY, WebElementStateMatchers.isVisible()).forNoMoreThan(10).seconds(),
                ClickOnElement.on(BUTTON_GOTO_PAY)
        );
    }

    public static GoToPay pay() {
        return Tasks.instrumented(GoToPay.class);
    }
}
