package co.com.colcomercio.financiero.tasks.paymetProcess.selectaddress;

import co.com.colcomercio.financiero.interactions.AddPassLogin;
import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.Wait;
import co.com.colcomercio.financiero.models.users.Users;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
//import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import static co.com.colcomercio.financiero.userinterfaces.paymentPage.ShippingAddressPage.*;

public class OtherData implements Task {
    private final Users userEcomerce;
    private static final Logger logger = LogManager.getLogger(OtherData.class);

    public OtherData(Users userEcomerce) {
        this.userEcomerce = userEcomerce;
    }

    //@Step("Seleccionar otros datos para la direccion de pago")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("#######################SELECCIONANDO INGRESAR OTROS DATOS######################");

        actor.attemptsTo(
                ScrollToElement.to(BUTTON_INGRESAR_OTROS_DATOS),
                ClickOnElement.on(BUTTON_INGRESAR_OTROS_DATOS),
                Wait.withDuration(2)
                // si es por soft login y se selecciona otros datos o guadada se debe loguear completamete
        );
        if (TEXT_ASEGURAR_SOFTLOGIN.isVisibleFor(actor)){
            actor.attemptsTo(
                    ClickOnElement.on(BUTTON_CONTINUARDIR_SOFTLOGIN),
                    AddPassLogin.addPass(userEcomerce)
            );
        }

    }
    public static OtherData otherData(Users users) {
        return Tasks.instrumented(OtherData.class, users);
    }
}
