package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
public class CashPaymentPage extends PageObject {
    public static final Target RADIOBUTTON_SURED =Target.the("Radio buton SuRed").locatedBy("(//label[@for=\"sured\"])[1]");
    public static final Target RADIOBUTTON_DEPOSITO =Target.the("Radio buton Deposito").locatedBy("(//label[@for=\"bankdeposit\"])[1]");
    public static final Target RADIOBUTTON_EFECTY =Target.the("Radio buton Efecty").locatedBy("(//label[@for=\"efecty\"])[1]");

}
