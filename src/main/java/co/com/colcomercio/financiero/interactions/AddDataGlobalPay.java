package co.com.colcomercio.financiero.interactions;

import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Interaction;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.CardsPage.*;
import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.CardsPage.EDITBOX_NUMID_GLOBALPAY;
import static co.com.colcomercio.financiero.utils.WaitingTime.LOW_TIME;
import static net.serenitybdd.screenplay.matchers.WebElementStateMatchers.isVisible;

public class AddDataGlobalPay implements Interaction {
    private static final Logger logger = LogManager.getLogger(AddDataGlobalPay.class);
    private final PaymentCard paymentCard;

    public AddDataGlobalPay(PaymentCard paymentCard) {
        this.paymentCard = paymentCard;
    }

    @Override
    public <T extends Actor> void performAs(T actor) {

        logger.info("##############################AGREGANDO DATOS DE LA TARJETA##############################");
        actor.attemptsTo(
                WaitUntil.the(EDITBOX_CVCDATENOMNUM_GLOBALPAY.of("Número de la tarjeta"), isVisible()).forNoMoreThan(LOW_TIME).seconds(),
                //Wait.withDuration(LOW_TIME),
                ScrollToElement.to(EDITBOX_CVCDATENOMNUM_GLOBALPAY.of("Número de la tarjeta")),
                EnterByDigit.onTargetTheString(paymentCard.getDataPaymentCard().getCardNumber(),EDITBOX_CVCDATENOMNUM_GLOBALPAY.of("Número de la tarjeta")),
                EnterText.intoField(paymentCard.getDataPaymentCard().getExpirationDate(),EDITBOX_CVCDATENOMNUM_GLOBALPAY.of("Fecha de expiración")),
                EnterText.intoField(paymentCard.getDataPaymentCard().getName(),EDITBOX_CVCDATENOMNUM_GLOBALPAY.of("Nombre y Apellido como figura en la tarjeta")),
                EnterByDigit.onTargetTheString(paymentCard.getDataPaymentCard().getCvv(), EDITBOX_CVCDATENOMNUM_GLOBALPAY.of("CVC")),
                ScrollToElement.to(LIST_CUOTAS_GLOBALPAY),
                ClickOnElement.on(LIST_CUOTAS_GLOBALPAY),
                ClickOnElement.on(SELECT_GLOBALPAY.of("1")),
                ClickOnElement.on(LIST_TIPOID_GLOBALPAY),
                ClickOnElement.on(SELECT_GLOBALPAY.of("CC")),
                EnterText.intoField("12345678", EDITBOX_NUMID_GLOBALPAY)

        );
    }
    public static AddDataGlobalPay addData(PaymentCard paymentCard){
        return Tasks.instrumented(AddDataGlobalPay.class, paymentCard);
    }
}
