package co.com.colcomercio.financiero.userinterfaces.selectedProductPages;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class SelectedProductPage extends PageObject {

    public static final Target BUTTON_GARANTIA =Target.the("Boton Garantia ext").located(By.xpath("//label[@for=\"delivery_same-day-delivery\"]"));
    public static final Target BUTTON_DISPONIBILITY =Target.the("Boton disponobilidad").located(By.xpath("//div[@class=\"menu_desktop_item\"]//p[contains(text(),'Disponibilidad en tienda')]"));
    public static final Target VALIDATE_NAME_PRODUCTC =Target.the("Nombre del producto").located(By.xpath("//div[@class=\"new-container__header\"]"));
    public static final Target VALIDATE_CHARACTERISTICS =Target.the("Texto validar caracteristicas").located(By.xpath("//div[@class=\"new-container__about\"]//h2[@class=\"js-subtitle-pdp\"]"));



}
