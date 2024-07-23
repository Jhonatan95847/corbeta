package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.ClickOnElement;
import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.SelectPayMethod;
import co.com.colcomercio.financiero.interactions.Wait;
import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.CardsPage.*;

public class TarjetaAlkosto implements Task {
    private static final Logger logger = LogManager.getLogger(TarjetaAlkosto.class);
    private final String payMethod;
    private final PaymentCard paymentCard;


    public TarjetaAlkosto(String payMethod, PaymentCard paymentCard) {
        this.payMethod = payMethod;
        this.paymentCard = paymentCard;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {
        logger.info("##############################AGREGANDO DATOS TARJETA ALKOSTO##############################");
        actor.attemptsTo(
                SelectPayMethod.payMethod(payMethod),
                Wait.withDuration(2),
                WaitUntil.the(EDITBOX_INPUTONE_CARD.of("Número de la tarjeta"), WebElementStateMatchers.isVisible()).forNoMoreThan(20).seconds(),
                EnterText.intoField(paymentCard.getDataPaymentCard().getCardNumber(),EDITBOX_INPUTONE_CARD.of("Número de la tarjeta")),
                EnterText.intoField(paymentCard.getDataPaymentCard().getExpirationDate(),EDITBOX_INPUTONE_CARD.of("Fecha de expiración")),
                EnterText.intoField(paymentCard.getDataPaymentCard().getName(),EDITBOX_INPUTONE_CARD.of("Nombre y Apellido como figura en la tarjeta"))

        );
        String cuota = "Cuotas";
        String nomberOfCuota = "1";
        String tipoID = " Tipo identificación ";
        String idSelect = "CC";
        String numeroID = "Número";
        String numberCC = "1234567";
        String cvc = "CVC o CVV";
        if (payMethod.equals("credito")||payMethod.equals("debito")){
             actor.attemptsTo(
                     EnterText.intoField(paymentCard.getDataPaymentCard().getCvv(),EDITBOX_INPUTTWO_CARD.of(cvc)),
                     ClickOnElement.on(EDITBOX_SECONDLABEL_CARD.of(cuota)),
                     ClickOnElement.on(EDITBOX_SECONDSELECT_CUOTAS.of(nomberOfCuota)),
                     ClickOnElement.on(EDITBOX_FIRSTLABEL_CARD.of(tipoID)),
                     ClickOnElement.on(EDITBOX_FIRSTSELECT_CUOTAS.of(idSelect)),
                     EnterText.intoField(numberCC,EDITBOX_INPUTTWO_CARD.of(numeroID))
                     //ClickOnElement.on(BUTTON_CONTINUAR_REVISAR)
             );
        } else if (payMethod.equals("alkosto")) {
            actor.attemptsTo(
                    EnterText.intoField(paymentCard.getDataPaymentCard().getCvv(),EDITBOX_INPUTONE_CARD.of(cvc)),
                    ClickOnElement.on(EDITBOX_SECONDLABEL_CARD.of(cuota)),
                    ClickOnElement.on(EDITBOX_SECONDSELECT_CUOTAS.of(nomberOfCuota)),
                    ClickOnElement.on(EDITBOX_SECONDLABEL_CARD.of(tipoID)),
                    ClickOnElement.on(EDITBOX_FIRSTSELECT_CUOTAS.of(idSelect)),
                    EnterText.intoField(numberCC,EDITBOX_INPUTTWO_CARD.of(numeroID)),
                    ClickOnElement.on(BUTTON_CONTINUAR_REVISAR)
            );
        } else if (payMethod.equals("codensa")) {
            actor.attemptsTo(
                    EnterText.intoField(paymentCard.getDataPaymentCard().getCvv(),EDITBOX_INPUTONE_CARD.of(cvc)),
                    ClickOnElement.on(EDITBOX_FIRSTLABEL_CARD.of(cuota)),
                    ClickOnElement.on(EDITBOX_FIRSTSELECT_CUOTAS.of(nomberOfCuota)),
                    ClickOnElement.on(EDITBOX_FIRSTLABEL_CARD.of(tipoID)),
                    ClickOnElement.on(EDITBOX_FIRSTSELECT_CUOTAS.of(idSelect)),
                    EnterText.intoField(numberCC,EDITBOX_INPUTTWO_CARD.of(numeroID))
                    //ClickOnElement.on(BUTTON_CONTINUAR_REVISAR)
            );
        } else if (payMethod.equals("codensa GlobalPay")) {
            actor.attemptsTo(
                    EnterText.intoField(paymentCard.getDataPaymentCard().getCvv(),EDITBOX_INPUTONE_CARD.of(cvc)),
                    ClickOnElement.on(EDITBOX_FIRSTLABEL_CARD.of(cuota)),
                    ClickOnElement.on(EDITBOX_FIRSTSELECT_CUOTAS.of(nomberOfCuota)),
                    ClickOnElement.on(EDITBOX_FIRSTLABEL_CARD.of("Tipo")),
                    ClickOnElement.on(EDITBOX_FIRSTSELECT_CUOTAS.of(idSelect)),
                    EnterText.intoField(numberCC,EDITBOX_INPUTTWO_CARD.of("Número"))
                    //ClickOnElement.on(BUTTON_CONTINUAR_REVISAR)
            );
        }
        actor.attemptsTo(
                Wait.withDuration(10)
        );
    }

    public static TarjetaAlkosto tarjetaAlkosto(String payMethod, PaymentCard paymentCard) {
        return Tasks.instrumented(TarjetaAlkosto.class, payMethod, paymentCard);
    }
}
