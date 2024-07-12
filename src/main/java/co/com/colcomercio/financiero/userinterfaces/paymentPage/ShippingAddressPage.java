package co.com.colcomercio.financiero.userinterfaces.paymentPage;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class ShippingAddressPage extends PageObject {
    public static final Target VALIDATE_DIRECCION_ENVIO =Target.the("Texto tus datos").located(By.xpath("//a//div[text()=' Dirección de envío']"));
    public static final Target RADIOBUTTON_SAVEADDRESS =Target.the("RadioButton direccion gurdada").located(By.xpath(""));
    public static final Target CHECK_OTROS_DATOS =Target.the("Check otros datos").located(By.xpath(""));
    public static final Target LIST_TIPO_ID =Target.the("Lista tipo Id").located(By.xpath("//form[@id=\"addressForm\"]//div[@class=\"float-select js-float-select js-float-group float-small\"]"));
    public static final Target SELECT_TIPO_ID =Target.the("Select tipo Id").locatedBy("//form[@id=\"addressForm\"]//div[@class=\"float-select--list js-float-list open\"]//ul//li[text()='{0}']");

    public static final Target EDITBOX_NUMBERID_ADDRESS =Target.the("Campo Numero Id direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"idNumber\"]"));
    public static final Target EDITBOX_NAME_ADDRES =Target.the("Campo nombre direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"firstName\"]"));
    public static final Target EDITBOX_LASTNAME_ADDRES =Target.the("Campo apellido direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"lastName\"]"));
    public static final Target EDITBOX_PHONE_ADDRES =Target.the("Campo telefono direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"phone\"]"));
    public static final Target LIST_DEPARTAMENT_ADDRES =Target.the("Lista Departamento direccion").located(By.xpath(""));
    public static final Target LIST_CITY_ADDRES =Target.the("Lista Ciudad direccion").located(By.xpath(""));
    public static final Target EDITBOX_SHIPPING_ADDRES =Target.the("Campo direccion envio").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"line1\"]"));
    public static final Target EDITBOX_BARRIO_ADDRES =Target.the("Campo barrio direccion").located(By.xpath("//form[@id=\"addressForm\"]//input[@name=\"district\"]"));
    public static final Target CHECK_SAVE_ADDRESS =Target.the("Check guardar direccion").located(By.xpath("//div[@class=\"checkbox-saveaddress mobile-siwtch-checkbox\"]//label[@class=\"control-label add-address-left-label\"]"));
    public static final Target RADIOBUTTON_MISMOS_DATOS =Target.the("Radiobutton mismos datos").located(By.xpath("//form[@id=\"addressForm\"]//input[@id=\"yes-same\"]"));
    public static final Target RADIOBUTTON_OTROS_DATOS =Target.the("Radiobutton otros datos").located(By.xpath("//form[@id=\"addressForm\"]//input[@id=\"no-same\"]"));
    public static final Target BUTTON_CONTINUAR_ADDRES =Target.the("Boton Continuar Adress").located(By.xpath("//button[@id=\"continueAddress\"]"));
    public static final Target RADIOBUTTON_CONFIRMAR_ADDRES =Target.the("Radiobuton Continuar Adress").located(By.xpath("//button[@id=\"continueAddress\"]"));
    public static final Target BUTTON_CONFIRMAR_ADDRES =Target.the("Boton Confirmar Adress").located(By.xpath("//button[@id=\"continueAddress\"]"));
    public static final Target BUTTON_INGRESAR_OTROS_DATOS =Target.the("Boton Ingresar otros datos").located(By.xpath("//div[@class=\"secondStepActions\"]//span[contains(text(),'Ingresar otros datos')]"));
    public static final Target BUTTON_DIRECCION_GUARDADA =Target.the("Boton Direccion guardada").located(By.xpath("//div[@class=\"secondStepActions\"]//span[contains(text(),'Seleccionar otra dirección guardada')]"));


}
