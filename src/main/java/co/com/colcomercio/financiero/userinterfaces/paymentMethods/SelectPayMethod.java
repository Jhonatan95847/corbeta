package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;

public class SelectPayMethod extends PageObject {
    public static final Target SELECT_PAY_METHOD =Target.the("Select Metodo de pago").locatedBy("//div[@id=\"payment-method-tabs\"]//span[text()='{0}']");
    public static final Target SELECT_CREDITCARD_METHOD =Target.the("Select tarjeta credito").locatedBy("//*[@id=\"payment-method-tabs\"]/ul[2]/li[1]/a/span");
    public static final Target SELECT_EFECTIVO_METHOD =Target.the("Select efectivo").locatedBy("//span[@class=\"pm-tab__title\"]//li/span[contains(text(),'{0}')]");
    public static final Target BUTTON_EDITAR_PAGO =Target.the("Boton editar metodo de envio").locatedBy("//div[@class=\"editFourthStep\"]//a");

}
