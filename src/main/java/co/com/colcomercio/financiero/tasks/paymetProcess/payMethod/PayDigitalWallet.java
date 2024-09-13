package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.ScrollToElement;
import co.com.colcomercio.financiero.interactions.selectOptions.SelectPayMethod;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.DigitalWalletPage.*;

public class PayDigitalWallet implements Task {

    private static final Logger logger = LogManager.getLogger(PayDigitalWallet.class);
    private final String payMethod;

    public PayDigitalWallet(String payMethod) {
        this.payMethod = payMethod;
    }
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################PAGANDO MEDIANTE BILLETERA DIGITAL##############################");
        actor.attemptsTo(
                SelectPayMethod.payMethod(payMethod),
                ScrollToElement.to(RADIOBUTTON_NEQUI)
        );
        if (payMethod.equals("Nequi")){
            actor.attemptsTo(
                    ClickOnElement.on(RADIOBUTTON_NEQUI)
            );
        } else if (payMethod.equals("Daviplata")) {
            actor.attemptsTo(
                    ClickOnElement.on(RADIOBUTTON_DAVIPLATA)
            );
        }
        actor.attemptsTo(
            ClickOnElement.on(SELECT_TIPOID_BILLETERA),
            ClickOnElement.on(LIST_TIPOID_BILLETERA.of("C.C")),
            EnterText.intoField("12345678",EDITBOX_ID_BILLETERA),
            ClickOnElement.on(BUTTON_CONTINUAR_BILLETERA)
        );
    }
    public static PayDigitalWallet paymentCard(String payMethod) {
        return Tasks.instrumented(PayDigitalWallet.class, payMethod);
    }
}
