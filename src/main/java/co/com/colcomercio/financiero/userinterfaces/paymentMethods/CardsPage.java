package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;


public class CardsPage extends PageObject {
    public static final Target EDITBOX_DATA_CARD =Target.the("Campo Datos de la tarjeta").locatedBy("//div[@class=\"z-content z-active\"]//label[contains(text(),'{0}')]");

}
