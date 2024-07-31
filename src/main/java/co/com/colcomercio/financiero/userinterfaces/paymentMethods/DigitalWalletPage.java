package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;

public class DigitalWalletPage extends PageObject {
    public static final Target RADIOBUTTON_NEQUI =Target.the("Radio button nequi").locatedBy("//input[@id=\"bankId-NEQUI CERTIFICACION\"]/ancestor::div[1]");
    public static final Target RADIOBUTTON_DAVIPLATA =Target.the("Radio button daviplata").locatedBy("//input[@id=\"bankId-DAVIPLATA\"]/ancestor::div[1]");

}
