package co.com.colcomercio.financiero.userinterfaces.shopingCarPage;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class ActionsOnCar extends PageObject {
    public static final Target RADIOBUTTON_FREE =Target.the("Radio button entrega gratis").located(By.xpath("//div[@class=\"cart-delivery-mode__free active\"]//input[@name=\"delivery-radio_0\"]"));
    public static final Target RADIOBUTTON_STORE =Target.the("Radio button recoger en tienda").located(By.xpath("//div[@class=\"cart-delivery-mode__store active\"]//input[@name=\"delivery-radio_0\"]"));
    public static final Target RADIOBUTTON_SAMEDAY =Target.the("Radio button mismo dia").located(By.xpath("//div[@class=\"cart-delivery-mode__same-day \"]//input[@name=\"delivery-radio_0\"]"));
    public static final Target BUTTON_DELETE_PRODUCT =Target.the("Boton Eliminar producto").located(By.xpath("//div[@class=\"item__interactions hidden-xs hidden-sm\"]//i[@class=\"alk-icon-eliminar\"]"));
    public static final Target BUTTON_DELETE_PRODUCT_KOMBO =Target.the("Boton Eliminar producto kombo").located(By.xpath("//button[contains(text(),'Eliminar producto')]"));
    public static final Target SELECT_QUANTITY =Target.the("Select Cantidad producto").located(By.xpath("//div[@class=\"form-group red-arrow item__quantity__form\"]//select[@name=\"quantity\"]"));
    public static final Target VALIDATE_NAME_PRODUCT =Target.the("Nombre del producto").located(By.xpath("//span[@class=\"item__name\"]"));
    public static final Target VALIDATE_IMAGE_PRODUCT =Target.the("Imagen del producto").located(By.xpath("//div[@class=\"item-column item__image\"]"));
    public static final Target VALIDATE_PRICE =Target.the("Precio del producto").located(By.xpath("//div[@class=\"item__price__main\"]"));

}
