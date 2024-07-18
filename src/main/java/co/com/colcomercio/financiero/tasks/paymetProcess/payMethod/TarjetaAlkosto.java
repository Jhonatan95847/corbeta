package co.com.colcomercio.financiero.tasks.paymetProcess.payMethod;

import co.com.colcomercio.financiero.interactions.EnterText;
import co.com.colcomercio.financiero.interactions.SelectPayMethod;
import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.Task;
import net.serenitybdd.screenplay.Tasks;
import net.serenitybdd.screenplay.matchers.WebElementStateMatchers;
import net.serenitybdd.screenplay.waits.WaitUntil;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.paymentMethods.CardsPage.EDITBOX_DATA_CARD;

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
                WaitUntil.the(EDITBOX_DATA_CARD.of("Número de la tarjeta"), WebElementStateMatchers.isVisible()).forNoMoreThan(30).seconds(),
                EnterText.intoField(paymentCard.getDataPaymentCard().getCardNumber(),EDITBOX_DATA_CARD.of("Número de la tarjeta")),
                EnterText.intoField(paymentCard.getDataPaymentCard().getExpirationDate(),EDITBOX_DATA_CARD.of("Fecha de expiración")),
                //EnterText.intoField(paymentCard.getDataPaymentCard().getCvv(),EDITBOX_DATA_CARD.of("CVC o CVV")),
                EnterText.intoField(paymentCard.getDataPaymentCard().getName(),EDITBOX_DATA_CARD.of("Nombre y Apellido como figura en la tarjeta"))
        );
    }
    public static TarjetaAlkosto tarjetaAlkosto(String payMethod, PaymentCard paymentCard) {
        return Tasks.instrumented(TarjetaAlkosto.class, payMethod, paymentCard);
    }
}
