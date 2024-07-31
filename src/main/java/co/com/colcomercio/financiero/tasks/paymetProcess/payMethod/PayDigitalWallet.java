package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.SelectPayMethod;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.DigitalWalletPage.RADIOBUTTON_DAVIPLATA;
import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.DigitalWalletPage.RADIOBUTTON_NEQUI;

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
                SelectPayMethod.payMethod(payMethod)
        );
        if (payMethod.equals("nequi")){
            actor.attemptsTo(
                    ClickOnElement.on(RADIOBUTTON_NEQUI)
            );
        } else if (payMethod.equals("daviplata")) {
            actor.attemptsTo(
                    ClickOnElement.on(RADIOBUTTON_DAVIPLATA)
            );
        }
        actor.attemptsTo(
            //ClickOnElement.on(EDITBOX_FIRSTLABEL_CARD.of("Tipo id")),
            //ClickOnElement.on(EDITBOX_FIRSTSELECT_CUOTAS.of("CC")),
            //EnterText.intoField("12345678",EDITBOX_INPUTONE_CARD.of("Número"))
        );
    }
    public static PayDigitalWallet paymentCard(String payMethod) {
        return Tasks.instrumented(PayDigitalWallet.class, payMethod);
    }
}
