package co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.*;

public class SelectSaveAddress implements Task {
    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_DIRECCION_GUARDADA),
                ClickOnElement.on(RADIOBUTTON_DIRECCION_GUARDADA),
                ClickOnElement.on(BUTTON_CONTINUAR_ADDRES)
        );
    }
    public static SelectSaveAddress selectSave() {
        return Tasks.instrumented(SelectSaveAddress.class);
    }

}
