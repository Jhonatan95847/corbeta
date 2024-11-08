package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.*;
import co.com.colcomercio.financiero.interactions.selectOptions.SelectPayMethod;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.PsePage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;

public class PayPSE implements Task {
    private static final Logger logger = LogManager.getLogger(PayPSE.class);
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################PAGANDO MEDIANTE PSE##############################");
                actor.attemptsTo(
                        SelectPayMethod.payMethod("PSE"),
                        Wait.withDuration(5),
                        ScrollToElement.to(SELECT_BANCO_PSE),
                        ClickOnElement.on(SELECT_BANCO_PSE),
                        Wait.withDuration(MICRO_TIME),
                        ClickOnElement.on(LIST_BANCO),
                        Wait.withDuration(MICRO_TIME),
                        ScrollToElement.to(SELECT_TIPO_CLIENTE_PSE),
                        ClickOnElement.on(SELECT_TIPO_CLIENTE_PSE),
                        ClickOnElement.on(LIST_TIPO_CLIENTE),
                        ClickOnElement.on(SELECT_TIPO_ID_PSE),
                        ClickOnElement.on(LIST_TIPO_ID),
                        EnterText.intoField("12345678",EDITBOX_TIPO_ID),
                        ScrollToElement.to(BUTTON_CONTINUAR_PSE),
                        ClickOnElement.on(BUTTON_CONTINUAR_PSE)
                );
    }
    public static PayPSE pay(){return Tasks.instrumented(PayPSE.class);
    }

}
