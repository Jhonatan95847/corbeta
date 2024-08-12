package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;

public class DigitalWalletPage extends PageObject {
    public static final Target RADIOBUTTON_NEQUI =Target.the("Radio button nequi").locatedBy("//input[@id=\"bankId-NEQUI CERTIFICACION\"]/ancestor::div[1]");
    public static final Target RADIOBUTTON_DAVIPLATA =Target.the("Radio button daviplata").locatedBy("//input[@id=\"bankId-DAVIPLATA\"]/ancestor::div[1]");
    public static final Target SELECT_TIPOID_BILLETERA =Target.the("Boton select ID billetera").locatedBy("//*[@id=\"payment-method-tabs\"]//span/div");
    public static final Target LIST_TIPOID_BILLETERA =Target.the("Select ID billetera").locatedBy("//div[@class=\"float-select--list js-float-list open\"]//li[contains(text(),'{0}')]");
    public static final Target EDITBOX_ID_BILLETERA =Target.the("Campo de texto billetera").locatedBy("//div[@class=\"z-content z-active\"]//input[@id=\"documentId\"]");
    public static final Target BUTTON_CONTINUAR_BILLETERA =Target.the("Boton continuar billetera").locatedBy("//div[@class=\"z-content z-active\"]//i");

}
