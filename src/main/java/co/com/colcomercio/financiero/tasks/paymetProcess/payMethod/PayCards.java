package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.*;
import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.thucydides.core.annotations.Step;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.CardsPage.*;
import static jdk.internal.org.jline.utils.Log.error;

public class PayCards implements Task {
    private static final Logger logger = LogManager.getLogger(PayCards.class);
    private final String payMethod;
    private final PaymentCard paymentCard;


    public PayCards(String payMethod, PaymentCard paymentCard) {
        this.payMethod = payMethod;
        this.paymentCard = paymentCard;
    }

    @Step("Pagando mediante Tarjeta")
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################PAGANDO MEDIANTE TARJETA##############################");

        actor.attemptsTo(
                Wait.withDuration(5),
                SelectPayMethod.payMethod(payMethod)
        );
        switch (payMethod) {
            case "Tarjeta de Crédito":
            case "Crédito Fácil CODENSA":
                actor.attemptsTo(
                        AddDataPayU.addData(paymentCard),
                        ClickOnElement.on(CHECK_USARCORREO)
                );
                break;
            case "Tarjeta de Crédito o Debito con CVV":
            case "Tarjeta Alkosto":
                actor.attemptsTo(
                        AddDataGlobalPay.addData(paymentCard)
                );
                break;
            default:
                error();
                break;
        }
        actor.attemptsTo(
                ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                ClickOnElement.on(BUTTON_CONTINUAR_REVISAR),
                Wait.withDuration(5)
        );
    }
    public static PayCards tarjetaAlkosto(String payMethod, PaymentCard paymentCard) {
        return Tasks.instrumented(PayCards.class, payMethod, paymentCard);
    }
}
