package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.*;
import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.CardsPage.*;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static jdk.internal.org.jline.utils.Log.error;

public class PayCards implements Task {

    private final String payMethod;
    private final PaymentCard paymentCard;


    public PayCards(String payMethod, PaymentCard paymentCard) {
        this.payMethod = payMethod;
        this.paymentCard = paymentCard;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        actor.attemptsTo(
                Wait.withDuration(LOW_TIME),
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
            case "credito guardada":
            //case "codensa guardada":
                actor.attemptsTo(
                        AddDataPayU.addData(paymentCard),
                        ClickOnElement.on(CHECK_USARCORREO),
                        ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                        ClickOnElement.on(CHECK_SAVECARD_CREDITO)
                );
                break;
            case "debito guardada":
            case "alkosto guardada":
                actor.attemptsTo(
                        AddDataGlobalPay.addData(paymentCard),
                        ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                        ClickOnElement.on(CHECK_SAVECARD_DEBITO)
                );
                break;
            default:
                error();
                break;
        }
        actor.attemptsTo(
                ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                ClickOnElement.on(BUTTON_CONTINUAR_REVISAR),
                Wait.withDuration(LOW_TIME)
        );

    }

    public static PayCards tarjetaAlkosto(String payMethod, PaymentCard paymentCard) {
        return Tasks.instrumented(PayCards.class, payMethod, paymentCard);
    }
}
