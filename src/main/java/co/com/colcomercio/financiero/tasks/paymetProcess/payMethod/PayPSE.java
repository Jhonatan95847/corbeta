package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.*;
import co.com.colcomercio.financiero.interactions.selectOptions.SelectPayMethod;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.PsePage.*;

public class PayPSE implements Task {
    private static final Logger logger = LogManager.getLogger(PayPSE.class);
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################PAGANDO MEDIANTE PSE##############################");
                actor.attemptsTo(
                        SelectPayMethod.payMethod("PSE"),
                        ClickOnElement.on(SELECT_BANCO_PSE),
                        ClickOnElement.on(LIST_BANCO),
                        ClickOnElement.on(SELECT_TIPO_CLIENTE_PSE),
                        ClickOnElement.on(LIST_TIPO_CLIENTE),
                        ClickOnElement.on(SELECT_TIPO_ID_PSE),
                        ClickOnElement.on(LIST_TIPO_ID),
                        EnterText.intoField("12345678",EDITBOX_TIPO_ID),
                        ClickOnElement.on(BUTTON_CONTINUAR_PSE)
                );
    }
    public static PayPSE pay(){return Tasks.instrumented(PayPSE.class);
    }

}
