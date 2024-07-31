package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;


public class CardsPage extends PageObject {

    public static final  Target EDITBOX_CVCDATENOMNUM_GLOBALPAY = Target.the("Campo de texto nombre, fecha y cvc global pay").locatedBy("(//div[@class=\"z-content z-active\"]//div[@class=\"payment-form\"]//label[contains(text(),'{0}')]/following-sibling::input)[1]");
    public static final  Target EDITBOX_NUMID_GLOBALPAY = Target.the("Campo de texto id global pay").locatedBy("//div[@class=\"z-content z-active\"]//div[@class=\"cuotas-pay col-xs-12 col-md-12\"]//label[contains(text(),'Nú')]/following-sibling::input");
    public static final  Target LIST_CUOTAS_GLOBALPAY = Target.the("Lista cuotas global pay").locatedBy("(//div[@class=\"z-content z-active\"]//label[contains(text(),'Cuo')]/ancestor::div[2])[2]");
    public static final  Target LIST_TIPOID_GLOBALPAY = Target.the("Lista tipo de id global pay").locatedBy("//div[@class=\"z-content z-active\"]//div[@class=\"payment-method-pse__identification--type\"]//div[@class=\"float-select--dropdown js-float-select-dropdown\"]/ancestor::div[1]");
    public static final  Target SELECT_GLOBALPAY = Target.the("Select global pay").locatedBy("(//div[@class=\"z-content z-active\"]//div[@class=\"cuotas-pay col-xs-12 col-md-12\"]//li[@data-value='{0}'])[1]");
    public static final  Target EDITBOX_CVCDATENOMNUM_PAYU = Target.the("Campo de texto nombre, fecha y cvc payu").locatedBy("(//div[@class=\"z-content z-active\"]//div[@class=\"form-creditcard__new-card--grey\"]//label[contains(text(),'{0}')]/following-sibling::input)[1]");
    public static final  Target EDITBOX_NUMID_PAYU = Target.the("Campo de texto id payu").locatedBy("//div[@class=\"z-content z-active\"]//div[@class=\"cuotas col-xs-12 col-md-12\"]//label[contains(text(),'Nú')]/following-sibling::input");
    public static final  Target LIST_CUOTASID_PAYU = Target.the("Lista cuotas y tipo ID global pay").locatedBy("(//div[@class=\"z-content z-active\"]//div[@class=\"cuotas col-xs-12 col-md-12\"]//label[contains(text(),'{0}')]/ancestor::div[2])[1]");
    public static final  Target SELECT_PAYU = Target.the("Select payu").locatedBy("//div[@class=\"z-content z-active\"]//div[@class=\"cuotas col-xs-12 col-md-12\"]//li[@data-value='{0}']");
    public static final Target CHECK_SAVECARD =Target.the("Gurdar tarjera").locatedBy("(//label[@for=\"compradorEmailPhoneForm2\"])[1]");
    public static final Target CHECK_USARCORREO =Target.the("Usar datos de correo").locatedBy("//div[@class=\"z-content z-active\"]//div[contains(text(),'Usar Correo')]");
    public static final Target BUTTON_CONTINUAR_REVISAR =Target.the("Boton guardar y revisar").locatedBy("//div[@class=\"z-content z-active\"]//div[contains(@class,('action col-xs-12'))]//button[contains(text(),' Continuar y revisar pedido ')]");
    public static final Target BUTTON_AGREGARNUEVA_TARJETA =Target.the("Boton agregar nueva tarjeta").locatedBy("//div[@class=\"z-content z-active\"]//span[contains(text(),'Agregar nueva')]");

}
