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

        switch (payMethod) {
            case "credito":
            case "codensa":
                actor.attemptsTo(
                        Wait.withDuration(LOW_TIME),
                        SelectPayMethod.payMethod(payMethod),
                        AddDataPayU.addData(paymentCard),
                        ClickOnElement.on(CHECK_USARCORREO),
                        ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                        ClickOnElement.on(BUTTON_CONTINUAR_REVISAR)
                );
                break;
            case "debito":
            case "alkosto":
                actor.attemptsTo(
                        Wait.withDuration(LOW_TIME),
                        SelectPayMethod.payMethod(payMethod),
                        AddDataGlobalPay.addData(paymentCard),
                        ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                        ClickOnElement.on(BUTTON_CONTINUAR_REVISAR)
                );
                break;

            case "credito guardada":
            //case "codensa guardada":
                actor.attemptsTo(
                        Wait.withDuration(LOW_TIME),
                        SelectPayMethod.payMethod(payMethod),
                        AddDataPayU.addData(paymentCard),
                        ClickOnElement.on(CHECK_USARCORREO),
                        ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                        ClickOnElement.on(CHECK_SAVECARD_CREDITO),
                        ClickOnElement.on(BUTTON_CONTINUAR_REVISAR)

                );
                break;
            case "debito guardada":
            case "alkosto guardada":
                actor.attemptsTo(
                        Wait.withDuration(LOW_TIME),
                        SelectPayMethod.payMethod(payMethod),
                        AddDataGlobalPay.addData(paymentCard),
                        ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                        ClickOnElement.on(CHECK_SAVECARD_DEBITO),
                        ClickOnElement.on(BUTTON_CONTINUAR_REVISAR)
                );
                break;
            default:
                error();
                break;
        }
        actor.attemptsTo(

                Wait.withDuration(LOW_TIME)
        );
    }

    public static PayCards tarjetaAlkosto(String payMethod, PaymentCard paymentCard) {
        return Tasks.instrumented(PayCards.class, payMethod, paymentCard);
    }
}
