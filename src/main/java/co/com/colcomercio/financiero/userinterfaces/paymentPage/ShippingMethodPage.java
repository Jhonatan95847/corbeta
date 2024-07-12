package co.com.colcomercio.financiero.userinterfaces.paymentPage;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class ShippingMethodPage extends PageObject {
    public static final Target VALIDATION_METODOENVIO =Target.the("Texto metodo de envio").locatedBy("//div[@class=\"checkout-steps__container active\"]//div[text()=' Método de envío']");
    public static final Target VALIDATION_TIPO_METODOENVIO =Target.the("Texto tipo de envio").located(By.xpath("//div[@class=\"checkout-shipping-items row\"]//span[contains(text(),'{0}')]"));
    public static final Target BUTTON_CONTINUAR_ENVIO =Target.the("Boton continual envio").located(By.xpath("//button[@id=\"deliveryMethodSubmit\"]"));
    public static final Target BUTTON_CAMBIAR_METODO =Target.the("Boton cambiar metodo ").located(By.xpath("//a[text()='Cambiar método de envío']"));
    public static final Target EDITTEXT_NUMBERID_ENVIO =Target.the("Campo numero identificacion envio").located(By.xpath("//input[@id=\"identificationNumber\"]"));


}
