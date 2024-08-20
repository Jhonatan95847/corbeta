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
    public static final Target CHECK_SAVECARD_CREDITO =Target.the("Gurdar tarjera credito").locatedBy("(//label[@for=\"checkboxSaveCard\"])[2]");
    public static final Target CHECK_SAVECARD_DEBITO =Target.the("Gurdar tarjera debito").locatedBy("//div[@class=\"z-content z-active\"]//div[@class=\"form-check mobile-siwtch-checkbox\"]//label");
    public static final Target CHECK_USARCORREO =Target.the("Usar datos de correo").locatedBy("//div[@class=\"z-content z-active\"]//div[contains(text(),'Usar Correo')]");
    public static final Target BUTTON_CONTINUAR_REVISAR =Target.the("Boton guardar y revisar").locatedBy("//div[@class=\"z-content z-active\"]//div[contains(@class,('action col-xs-12'))]//button[contains(text(),' Continuar ')]");
    public static final Target BUTTON_AGREGARNUEVA_TARJETA =Target.the("Boton agregar nueva tarjeta").locatedBy("//div[@class=\"z-content z-active\"]//span[contains(text(),'Agregar nueva')]");
    public static final Target CHECK_SELECT_TARJETA_CREDITO =Target.the("Check select tarjeta guardada").locatedBy("//div[@class=\"brand__checkbox\"]//label[@for=\"0\"]");
    public static final Target EDITBOX_CVC_TARJETAGUARDADA_CREDITO =Target.the("Campo CVC tarjeta guardada").locatedBy("//input[@name=\"ccv_registered_card\"]");
    public static final Target SELECT_CUOTAS_TARJETAGUARDADA_CREDITO =Target.the("Select cuotas tarjeta guardada").locatedBy("//div[@class=\"float-select js-defaultInstallmentsSavedCard js-float-select js-float-group\"]");
    public static final Target LIST_CUOTAS_TARJETAGUARDADA_CREDITO =Target.the("Lista cuotas tarjeta guardada").locatedBy("(//div[@class=\"row form-creditcard js-credit-card-tab\"]//li[@data-value='{0}'])[1]");
    public static final Target BUTTON_CONTINUARREVISAR_SAVECREDITO =Target.the("Boton Continuar y revisar guardada credito").locatedBy("(//div[@class=\"row form-creditcard js-credit-card-tab\"]//button/i)[1]");
    public static final Target EDITBOX_CVC_TARJETAGUARDADA_GLOBALPAY =Target.the("Campo CVC guardada Global pay").locatedBy("//input[@name=\"ccv_registered_card_globalpay\"]");
    public static final Target SELECT_CUOTAS_TARJETAGUARDADA_GLOBALPAY =Target.the("Select cuotas guardada Global pay").locatedBy("//label[@for=\"selected_globalpay_installments\"]");
    public static final Target LIST_CUOTAS_TARJETAGUARDADA_GLOBALPAY =Target.the("List cuotas guardada Global pay").locatedBy("//div[@class=\"float-select--list js-float-list open\"]//li[@data-value=\"{0}\"]");
    public static final Target CHECK_TARJETA_GUARDADA_GLOBALPAY =Target.the("Check tarjeta guardada global pay").locatedBy("//div[@class=\"z-content z-active\"]//label[@class=\"form-check-label label-saved-card\"]");
    public static final Target CVC_TARJETA_GUARDADA =Target.the("CVC tarjeta guardada global pay").locatedBy("(//div[@class=\"z-content z-active\"]//label[contains(text(),'{0}')]/following-sibling::input)[1]");
    public static final Target CUOTA_TARJETA_GUARDADA =Target.the("Cuota tarjeta guardada global pay").locatedBy("(//div[@class=\"z-content z-active\"]//label[contains(text(),'Cuota')])[1]");
    public static final Target SELECTCUOTA_TARJETA_GUARDADA =Target.the("Select Cuota tarjeta guardada global pay").locatedBy("//div[@class=\"float-select--list js-float-list open\"]//li[@data-value=\"1\"]");
    public static final Target BUTTON_CONTINAR_SAVE =Target.the("Boton continuar tarjeta guardada global pay").locatedBy("//div[@class=\"z-content z-active\"]//button[contains(text(),' Continuar ')]");

}
