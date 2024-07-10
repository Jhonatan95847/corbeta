package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class DebitCardPage extends PageObject {
    public static final Target EITBOX_NUMBERCARD_TD =Target.the("Campo Numero de tarjeta alkosto").located(By.xpath("//input[@name=\"cardNumber\"]"));
    public static final Target EITBOX_EXPIRATIONDATE_TD =Target.the("Campo fecha de expiracion").located(By.xpath("//input[@name=\"expirationDate\"]"));
    public static final Target EITBOX_CVV_TD =Target.the("Campo CVV o CVC").located(By.xpath("//input[@name=\"cc_verificationNumber\"]"));
    public static final Target EITBOX_NAME_TD =Target.the("Campo Nombre Tarjeta").located(By.xpath("//input[@name=\"cc_name\"]"));
    public static final Target SELECT_CUOTA_TD =Target.the("Select cuota").located(By.xpath("//div[@class=\"float-select js-defaultInstallmentsNewCard js-newDebitAsCreditcard-installments-payu js-float-select js-float-group float-small\"]"));
    public static final Target SELECT_ID_TA =Target.the("Select tipo ID").located(By.xpath("//div[@class=\"z-content z-active\"]//div[@class=\"payment-method-pse__identification form-group js-validate-parent js-validate-id-dt\"]"));
    public static final Target EDITBOX_NUMBERID_TD =Target.the("Campo numero ID").located(By.xpath("//div[@class=\"z-content z-active\"]//input[@name=\"payerIdentificationNumber\"]"));
    public static final Target CHECK_EMAIL_TD =Target.the("Check correo").located(By.xpath("//div[@class=\"z-content z-active\"]//input[@id=\"compradorEmailPhoneForm1\"]"));
    public static final Target CHECK_SAVE_TD =Target.the("Check guardar tarjeta").located(By.xpath("//div[@class=\"z-content z-active\"]//input[@name=\"checkboxSaveCard\"]"));
    public static final Target BUTTON_CONTINUAR_TD =Target.the("Boton continuar").located(By.xpath("//button[@id=\"checkoutNextCreditCardPayment\"]"));
}
