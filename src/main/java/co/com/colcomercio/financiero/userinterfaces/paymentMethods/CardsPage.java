package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;


public class CardsPage extends PageObject {
    public static final Target EDITBOX_INPUTONE_CARD =Target.the("Campo Datos de la tarjeta uno").locatedBy("(//div[@class=\"z-content z-active\"]//label[contains(text(),'{0}')]/following-sibling::input)[1]");
    public static final Target EDITBOX_INPUTTWO_CARD =Target.the("Campo Datos de la tarjeta udos").locatedBy("(//div[@class=\"z-content z-active\"]//label[contains(text(),'{0}')]/following-sibling::input)[2]");
    public static final Target EDITBOX_FIRSTLABEL_CARD =Target.the("Elemento label uno").locatedBy("(//div[@class=\"z-content z-active\"]//label[contains(text(),'{0}')]/ancestor::div[2])[1]");
    public static final Target EDITBOX_SECONDLABEL_CARD =Target.the("Elemento label dos").locatedBy("(//div[@class=\"z-content z-active\"]//label[contains(text(),'{0}')]/ancestor::div[2])[2]");
    public static final Target EDITBOX_FIRSTSELECT_CUOTAS =Target.the("Select uno").locatedBy("(//div[@class=\"z-content z-active\"]//li[@data-value='{0}'])[1]");
    public static final Target EDITBOX_SECONDSELECT_CUOTAS =Target.the("Select dos").locatedBy("(//div[@class=\"z-content z-active\"]//li[@data-value='{0}'])[2]");
    public static final Target CHECK_SAVECARD =Target.the("Gurdar tarjera").locatedBy("(//label[@for=\"compradorEmailPhoneForm2\"])[1]");
    public static final Target BUTTON_CONTINUAR_REVISAR =Target.the("Boton guardar y revisar").locatedBy("(//div[@class=\"z-content z-active\"]//button[contains(text(),' Continuar y revisar pedido ')])[2]");

}
