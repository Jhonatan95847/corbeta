package co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingMethodPage.*;

public class SameShippingMethod implements Task {
    private final NewUser newUser;

    public SameShippingMethod(NewUser newUser) {
        this.newUser = newUser;
    }


    @Override
    public <T extends Actor> void performAs(T actor) {
        if (VALIDATION_TIPO_METODOENVIO.isVisibleFor(actor)){
            actor.attemptsTo(
                    EnterText.intoField(newUser.getDataNewUsers().getId(),EDITTEXT_NUMBERID_ENVIO),
                    ClickOnElement.on(BUTTON_CONTINUAR_ENVIO)
            );
        } else {
            actor.attemptsTo(
                    ClickOnElement.on(BUTTON_CONTINUAR_ENVIO)
            );
        }
    }
    public static SameShippingMethod selectMethod(NewUser newUser) {
        return Tasks.instrumented(SameShippingMethod.class, newUser);
    }
}
