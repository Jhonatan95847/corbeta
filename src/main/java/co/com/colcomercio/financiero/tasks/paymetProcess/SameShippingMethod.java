package co.com.colcomercio.financiero.tasks.paymetProcess;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.tasks.shoppingCar.GoToPay;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingMethodPage.*;
import static co.com.colcomercio.financiero.userinterfaces.shopingCarPage.TotalInfo.BUTTON_GOTO_PAY;

public class SameShippingMethod implements Task {
    private final NewUser newUser;

    public SameShippingMethod(NewUser newUser) {
        this.newUser = newUser;
    }


    @Override
    public <T extends Actor> void performAs(T actor) {
        if (VALIDATION_TIPO_METODOENVIO.of(" Recoge en tienda").isVisibleFor(actor)){
            actor.attemptsTo(
                    ScrollToElement.to(VALIDATION_METODOENVIO),
                    EnterText.intoField(newUser.getDataNewUsers().getId(),EDITTEXT_NUMBERID_ENVIO),
                    ClickOnElement.on(BUTTON_CONTINUAR_ENVIO)
            );
        } else {
            actor.attemptsTo(
                    ClickOnElement.on(BUTTON_CONTINUAR_ENVIO)
            );
        }
    }
    public static SameShippingMethod selectMethod() {
        return Tasks.instrumented(SameShippingMethod.class);
    }
}
