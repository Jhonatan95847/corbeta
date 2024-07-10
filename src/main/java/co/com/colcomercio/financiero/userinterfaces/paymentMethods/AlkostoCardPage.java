package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class AlkostoCardPage extends PageObject {
    public static final Target EITBOX_NUMBERCARD_TA =Target.the("Campo Numero de tarjeta alkosto").located(By.xpath("//div[@class=\"z-content z-active\"]//label[contains(text(),'Número de la tarjeta')]"));
    public static final Target EITBOX_EXPIRATIONDATE_TA =Target.the("Campo fecha de expiracion").located(By.xpath("//div[@class=\"z-content z-active\"]//label[contains(text(),'Fecha de expira')]"));
    public static final Target EITBOX_CVV_TA =Target.the("Campo CVV o CVC").located(By.xpath("//input[@name=\"cc_verificationNumber\"]"));
    public static final Target EITBOX_NAME_TA =Target.the("Campo Nombre Tarjeta").located(By.xpath("//input[@name=\"cc_name\"]"));
    public static final Target SELECT_CUOTA_TA =Target.the("Select cuota").located(By.xpath("//div[@class=\"float-select js-defaultInstallmentsNewCard js-newDebitAsCreditcard-installments-payu js-float-select js-float-group float-small\"]"));
    public static final Target SELECT_ID_TA =Target.the("Select tipo ID").located(By.xpath("//div[@class=\"z-content z-active\"]//div[@class=\"payment-method-pse__identification form-group js-validate-parent js-validate-id-dt\"]"));
    public static final Target EDITBOX_NUMBERID_TA =Target.the("Campo numero ID").located(By.xpath("//div[@class=\"z-content z-active\"]//input[@name=\"payerIdentificationNumber\"]"));
    public static final Target CHECK_EMAIL_TA =Target.the("Check correo").located(By.xpath("//div[@class=\"z-content z-active\"]//input[@id=\"compradorEmailPhoneForm1\"]"));
    public static final Target CHECK_SAVE_TA =Target.the("Check guardar tarjeta").located(By.xpath("//div[@class=\"z-content z-active\"]//input[@name=\"checkboxSaveCard\"]"));
    public static final Target BUTTON_CONTINUAR_TA =Target.the("Boton continuar").located(By.xpath("//button[@id=\"checkoutNextCreditCardPayment\"]"));

}
