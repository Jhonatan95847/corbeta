package co.com.colcomercio.financiero.userinterfaces.paymentPage;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class ShippingAddressPage extends PageObject {
    public static final Target VALIDATE_DIRECCION_ENVIO =Target.the("Texto tus datos").located(By.xpath("//a//div[text()=' Dirección de envío']"));
    public static final Target RADIOBUTTON_SAVEADDRESS =Target.the("RadioButton direccion gurdada").located(By.xpath(""));
    public static final Target CHECK_OTROS_DATOS =Target.the("Check otros datos").located(By.xpath(""));
    public static final Target LIST_TIPO_ID =Target.the("Lista tipo Id").located(By.xpath("//form[@id=\"addressForm\"]//div[@class=\"float-select js-float-select js-float-group float-small\"]|//form[@id=\"addressForm\"]//div[@class=\"float-select js-float-select js-float-group float-small active-click\"]"));

    public static final Target EDITBOX_NUMBERID_ADDRESS =Target.the("Campo Numero Id direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"idNumber\"]|//form[@id=\"addressForm\"]//input[@name=\"billTo_idNumber\"]"));
    public static final Target EDITBOX_NAME_ADDRES =Target.the("Campo nombre direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"firstName\"]|//form[@id=\"addressForm\"]//input[@name=\"billTo_firstName\"]"));
    public static final Target EDITBOX_LASTNAME_ADDRES =Target.the("Campo apellido direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"lastName\"]|//form[@id=\"addressForm\"]//input[@name=\"billTo_lastName\"]"));
    public static final Target EDITBOX_NAMECOMPANY_ADDRES =Target.the("Campo nombre direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"companyName\"]|//form[@id=\"addressForm\"]//input[@name=\"billTo_companyName\"]"));
    public static final Target EDITBOX_NAMEDELIVERY_ADDRES =Target.the("Campo apellido direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"deliveryName\"]"));
    public static final Target EDITBOX_PHONE_ADDRES =Target.the("Campo telefono direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"phone\"]|//form[@id=\"addressForm\"]//input[@name=\"billTo_phone\"]"));
    public static final Target LIST_DEPARTAMENT_ADDRES =Target.the("Lista Departamento direccion").located(By.xpath("//*[@id=\"i18nAddressForm\"]//div[5]/div[1]/div|//*[@id=\"js-form-billing-data-hide\"]/div[2]/div[1]/div/div/div"));
    public static final Target LIST_CITY_ADDRES =Target.the("Lista Ciudad direccion").located(By.xpath("//*[@id=\"i18nAddressForm\"]//div[5]/div[2]/div|//*[@id=\"js-form-billing-data-hide\"]/div[2]/div[2]/div/div/div"));
    public static final Target SELECT_LIST_ADDRES =Target.the("Select Departamento y Ciudad direccion").locatedBy("//div[@class=\"float-select--list js-float-list open\"]//li[contains(text(),'{0}')]");
    public static final Target EDITBOX_SHIPPING_ADDRES =Target.the("Campo direccion envio").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"line1\"]|//form[@id=\"addressForm\"]//input[@name=\"billTo_line1\"]"));
    public static final Target EDITBOX_BARRIO_ADDRES =Target.the("Campo barrio direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"district\"]|//form[@id=\"addressForm\"]//input[@name=\"billTo_district\"]"));
    public static final Target CHECK_SAVE_ADDRESS =Target.the("Check guardar direccion").located(By.xpath("//div[@class=\"checkbox-saveaddress mobile-siwtch-checkbox\"]//label[@class=\"control-label add-address-left-label\"]"));
    public static final Target RADIOBUTTON_MISMOS_DATOS =Target.the("Radiobutton mismos datos").located(By.xpath("//form[@id=\"addressForm\"]//input[@id=\"yes-same\"]"));
    public static final Target RADIOBUTTON_OTROS_DATOS =Target.the("Radiobutton otros datos").located(By.xpath("//form[@id=\"addressForm\"]//input[@id=\"no-same\"]"));
    public static final Target BUTTON_CONTINUAR_ADDRES =Target.the("Boton Continuar Adress final").located(By.xpath("//div[@class=\"col-md-offset-6 col-md-6 col-xs-12 no-padding\"]//button[@id=\"continueAddress\"]"));
    public static final Target RADIOBUTTON_CONFIRMAR_ADDRES =Target.the("Radiobuton seleccionar Adress modal").located(By.xpath("//*[@id=\"new-address-sugestion\"]//div[3]/div[2]//label"));
    public static final Target BUTTON_CONFIRMAR_ADDRES =Target.the("Boton Confirmar Adress modal").located(By.xpath("//button[contains(text(),'Confirmar Direcc')]"));
    public static final Target BUTTON_INGRESAR_OTROS_DATOS =Target.the("Boton Ingresar otros datos").located(By.xpath("//div[@class=\"secondStepActions\"]//span[contains(text(),'Ingresar otros datos')]"));
    public static final Target BUTTON_DIRECCION_GUARDADA =Target.the("Boton Direccion guardada").located(By.xpath("//div[@class=\"editSecondStepSelectSavedAddress\"]"));
    public static final Target RADIOBUTTON_DIRECCION_GUARDADA =Target.the("Radiobuton Direccion guardada").located(By.xpath("(//div[@class=\"label-green-check custom-radio__text\"])[1]"));
    public static final Target BUTTON_CONTINUAR_GUARDADA =Target.the("Continuar Direccion guardada").located(By.xpath("//button[@id=\"addressSubmit\"]"));
    public static final Target BUTTON_CONTINUAR_GUARDADA_HOY =Target.the("Continuar Direccion guardada").located(By.xpath("//button[@id=\"continueAddress\"]"));
    public static final Target TEXT_CONTINUAR_GUARDADA =Target.the("Texto datos de facturacion").located(By.xpath("//div[@class=\"container-radio-same-adress\"]//span[contains(text(),'Datos')]"));
    public static final Target TEXT_ASEGURAR_SOFTLOGIN =Target.the("Texto Queremos asegurar que eres tu").located(By.xpath("//span[contains(text(),' Queremos asegurarnos que realmente eres tú ')]"));
    public static final Target BUTTON_CONTINUARDIR_SOFTLOGIN =Target.the("Boton continuar softlogin otros datos").located(By.xpath("//div[@id=\"modalToEditSecondStepData\"]//button[contains(text(),'Continuar')]"));


}
