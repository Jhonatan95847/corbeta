package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.*;
import co.com.colcomercio.financiero.interactions.selectOptions.SelectPayMethod;
import co.com.colcomercio.financiero.interactions.addData.AddDataGlobalPay;
import co.com.colcomercio.financiero.interactions.addData.AddDataPayU;
import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.CardsPage.*;
import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.SelectPayMethod.BUTTON_EDITAR_PAGO;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static co.com.colcomercio.financiero.utils.WaitingTime.MICRO_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class PaySaveCards implements Task {
    private static final Logger logger = LogManager.getLogger(PaySaveCards.class);

    private final String payMethod;
    private final PaymentCard paymentCard;


    public PaySaveCards(String payMethod, PaymentCard paymentCard) {
        this.payMethod = payMethod;
        this.paymentCard = paymentCard;
    }
    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################PAGANDO MEDIANTE BOTON TARJETA GUARDADA##############################");

        actor.attemptsTo(
                Wait.withDuration(LOW_TIME),
                SelectPayMethod.payMethod(payMethod)
        );
        switch (payMethod) {
            case "Tarjeta de Crédito":
                actor.attemptsTo(
                        AddDataPayU.addData(paymentCard),
                        ClickOnElement.on(CHECK_USARCORREO),
                        //////////////////////////////////// variables son metodo de pago y cvc
                        ScrollToElement.to(CHECK_SAVECARD_CREDITO),
                        ClickOnElement.on(CHECK_SAVECARD_CREDITO),
                        ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                        ClickOnElement.on(BUTTON_CONTINUAR_REVISAR),
                        WaitUntil.the(BUTTON_EDITAR_PAGO, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                        ScrollToElement.to(BUTTON_EDITAR_PAGO),
                        ClickOnElement.on(BUTTON_EDITAR_PAGO),
                        ScrollToElement.to(CHECK_TARJETA_GUARDADA_GLOBALPAY),
                        ClickOnElement.on(CHECK_TARJETA_GUARDADA_GLOBALPAY),
                        EnterText.intoField(paymentCard.getDataPaymentCard().getCvv(), CVC_TARJETA_GUARDADA.of("CVC")),
                        ClickOnElement.on(CUOTA_TARJETA_GUARDADA),
                        ClickOnElement.on(SELECTCUOTA_TARJETA_GUARDADA),
                        ///////////////////////////////////////
                        ClickOnElement.on(BUTTON_CONTINAR_SAVE)
                );
                break;
            case "Tarjeta de Crédito o Debito con CVV":
                actor.attemptsTo(
                        AddDataGlobalPay.addData(paymentCard),
                        //////////////////////////////////////
                        //ClickOnElement.on(CHECK_SAVECARD_DEBITO),
                        ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                        ClickOnElement.on(BUTTON_CONTINUAR_REVISAR),
                        WaitUntil.the(BUTTON_EDITAR_PAGO, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                        ScrollToElement.to(BUTTON_EDITAR_PAGO),
                        ClickOnElement.on(BUTTON_EDITAR_PAGO),
                        ScrollToElement.to(CHECK_TARJETA_GUARDADA_GLOBALPAY),
                        ClickOnElement.on(CHECK_TARJETA_GUARDADA_GLOBALPAY),
                        EnterText.intoField(paymentCard.getDataPaymentCard().getCvv(), CVC_TARJETA_GUARDADA.of("CVC")),
                        ClickOnElement.on(CUOTA_TARJETA_GUARDADA),
                        ClickOnElement.on(SELECTCUOTA_TARJETA_GUARDADA),
                        ////////////////////////////////////////
                        ClickOnElement.on(BUTTON_CONTINAR_SAVE)

                );
                break;case "Tarjeta Alkosto":
                actor.attemptsTo(
                        AddDataGlobalPay.addData(paymentCard),
                        ScrollToElement.to(CHECK_SAVECARD_DEBITO),
                        ClickOnElement.on(CHECK_SAVECARD_DEBITO),
                        Wait.withDuration(MICRO_TIME),
                        ScrollToElement.to(BUTTON_CONTINUAR_REVISAR),
                        ClickOnElement.on(BUTTON_CONTINUAR_REVISAR),
                        WaitUntil.the(BUTTON_EDITAR_PAGO, isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                        ScrollToElement.to(BUTTON_EDITAR_PAGO),
                        ClickOnElement.on(BUTTON_EDITAR_PAGO),

                        ScrollToElement.to(CHECK_TARJETA_GUARDADA_GLOBALPAY),
                        ClickOnElement.on(CHECK_TARJETA_GUARDADA_GLOBALPAY),
                        EnterText.intoField(paymentCard.getDataPaymentCard().getCvv(), CVC_TARJETA_GUARDADA.of("#")),
                        ClickOnElement.on(CUOTA_TARJETA_GUARDADA),
                        ClickOnElement.on(SELECTCUOTA_TARJETA_GUARDADA),
                        ClickOnElement.on(BUTTON_CONTINAR_SAVE)

                );
                break;
            default:
                break;

        }
    }
    public static PaySaveCards pay(String payMethod, PaymentCard paymentCard){
        return Tasks.instrumented(PaySaveCards.class, payMethod, paymentCard);
    }
}
