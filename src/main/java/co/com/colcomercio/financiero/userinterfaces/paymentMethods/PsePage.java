package co.com.colcomercio.financiero.userinterfaces.paymentMethods;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;

public class PsePage extends PageObject {
    public static final Target SELECT_BANCO_PSE =Target.the("Select banco PSE").locatedBy("//label[@for=\"bankId\"]/ancestor::div[3]");
    public static final Target LIST_BANCO =Target.the("Lista banco PSE").locatedBy("//div[@class=\"float-select--list js-float-list js-bank-custom open\"]//li[text()='BANCO UNION COLOMBIANO']");
    public static final Target SELECT_TIPO_CLIENTE_PSE =Target.the("Select tipo de cliente PSE").locatedBy("//label[@for=\"personTypeId\"]/ancestor::div[3]");
    public static final Target LIST_TIPO_CLIENTE =Target.the("Lista tipo de cliente PSE").locatedBy("//div[@class=\"float-select--list js-float-list open\"]//li[text()='Natural']");
    public static final Target SELECT_TIPO_ID_PSE =Target.the("Select tipo de ID PSE").locatedBy("//label[@for=\"documentTypeId\"]/ancestor::div[3]");
    public static final Target LIST_TIPO_ID =Target.the("Lista tipo de ID PSE").locatedBy("//div[@class=\"float-select--list js-float-list open\"]//li[text()='C.C']");
    public static final Target EDITBOX_TIPO_ID =Target.the("Campo de texto de ID PSE").locatedBy("//div[@class=\"z-content z-active\"]//input[@id=\"documentId\"]");
    public static final Target BUTTON_CONTINUAR_PSE =Target.the("Boton continuar PSE").locatedBy("//div[@class=\"z-content z-active\"]//button[contains(text(),'Continuar')]");
    ///////////////////////////////////////////////////////////////
    public static final Target EDITBOX_EMAIL_PSE =Target.the("Campo de texto correo PSE").locatedBy("//input[@id=\"PNEMail\"]");
    public static final Target BUTTON_IRBANCO_PSE =Target.the("Boton ir al banco PSE").locatedBy("//button[@id=\"btnSeguir\"]");
    public static final Target BUTTON_DEBUG_PSE =Target.the("Boton debug PSE").locatedBy("//input[@id=\"btnDebug\"]");
    public static final Target EDITBOX_PROCESDATE =Target.the("Campo de texto fecha de proceso PSE").locatedBy("//input[@id=\"txtBankProcessDate\"]");
    public static final Target SELECT_TRANSACTIONSTATE =Target.the("Select estado de transaccion PSE").locatedBy("//select[@id=\"ddTransactionState\"]");
    public static final Target EDITBOX_AUTORIZATION =Target.the("Campo de texto autorizacion PSE").locatedBy("//input[@id=\"txtAuthorizationID\"]");
    public static final Target BUTTON_CALL =Target.the("BOton Call PSE").locatedBy("//input[@id=\"btnCall\"]");
    public static final Target BUTTON_RETURN_PRINCIPAL =Target.the("BOton Retornar PSE").locatedBy("//input[@id=\"btnReturnToPPE\"]");



}
