package co.com.colcomercio.financiero.userinterfaces.selectedProductPages;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class AddCarPage extends PageObject {
    public static final Target BUTTON_GO_TO_PAY =Target.the("Boton Ir al carrito y pagar").located(By.xpath("//div[@class=\"modal-content modal-alkosto\"]//a[contains(text(),'Ir al carrito y pagar')]"));
    public static final Target BUTTON_CONTINUE_BUY =Target.the("Boton Continuar compra").located(By.xpath("//div[@class=\"modal-content modal-alkosto\"]//span[contains(text(),'Continuar comprando')]"));
    public static final Target BUTTON_CLOSE =Target.the("Boton Cerrar").located(By.xpath("//div[@class=\"modal-content modal-alkosto\"]//button[@class=\"close js-sf-keep-shopping\"]"));
    public static final Target TEXT_GARANTIA =Target.the("Text Quiere agregar garantia").located(By.xpath("//div[contains(text(),'¿Quieres proteger tu producto con un (1) año')]"));
    public static final Target CHECK_NO_GARANTIA =Target.the("Check No gracias").located(By.xpath("//input[@id=\"extendedWarrantyOverlay1\"]"));
    public static final Target CHECK_SI_GARANTIA =Target.the("Check Si gracias").located(By.xpath("//input[@id=\"extendedWarrantyOverlay2\"]"));
    public static final Target TEXT_NAME_PRODUCT =Target.the("Text nombre de producto").located(By.xpath("//div[@class=\"modal-content modal-alkosto\"]//h5[@class=\"product-title\"]"));
    public static final Target TEXT_PRICE =Target.the("Text precio").located(By.xpath("//div[@class=\"modal-content modal-alkosto\"]//li[@class=\"product__details-section--actual-price\"]"));
}
