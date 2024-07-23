package co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.BUTTON_INGRESAR_OTROS_DATOS;

public class OtherData implements Task {
    private static final Logger logger = LogManager.getLogger(OtherData.class);

    @Step("Seleccionar otros datos para la direccion de pago")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("#######################SELECCIONANDO INGRESAR OTROS DATOS######################");
        actor.attemptsTo(
                ClickOnElement.on(BUTTON_INGRESAR_OTROS_DATOS)
        );
    }
    public static OtherData otherData() {
        return Tasks.instrumented(OtherData.class);
    }
}
