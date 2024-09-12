package co.com.colcomercio.financiero.userinterfaces;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class HomePage extends PageObject {

    public static final Target BUTTON_MYACCOUNT =Target.the("Boton Mi Cuenta").located(By.xpath("//li[@id=\"js-myaccount-header\"]//span[contains(text(),'Mi cuenta')]"));
    public static final Target BUTTON_MYCAR = Target.the("Boton Mi carrito").located(By.xpath("//li[@id=\"js-mycart-header\"]"));
    public static final Target BUTTON_SEARCH_BAR = Target.the("Boton busqueda").located(By.xpath("//button[@id=\"js-search-button\"]"));
    public static final Target BUTTON_SEARCH_BAR_DOS = Target.the("Boton busqueda").located(By.xpath("//*[@id=\"algoliaAutocompletev2\"]/div/form/i"));
    public static final Target EDITBOX_SEARCH_BAR = Target.the("Barra de busqueda").located(By.xpath("//input[@id=\"autocomplete-0-input\"]"));
    public static final Target EDITBOX_SEARCH_BAR_ADICIONAL = Target.the("Barra de busqueda paso adicional").located(By.xpath("//input[@id=\"js-algolia-site-search-input\"]"));
    public static final Target VALIDATE_ALKOSTO = Target.the("Imagen Alkosto").located(By.xpath("//img[@title=\"Alkosto\"]"));
    public static final Target VALIDATE_BANNER = Target.the("Banner Alkosto").located(By.xpath("//ul[@id=\"banner\"]"));
    public static final Target VALIDATE_CATEGORIES = Target.the("Banner categorias").located(By.xpath("//ul[@class=\"main-navigation__container js-main-navigation-categories\"]"));
    public static final Target BUTTON_DETALLES_PAGO = Target.the("Button detalles de pago").located(By.xpath("//div[@class=\"account-selector--information\"]//h4[contains(text(),'Detalles de pago')]/ancestor::div[2]"));
    public static final Target BUTTON_ELIMINAR_TARJETA = Target.the("Button Eliminar tarjeta").located(By.xpath("//section[@class=\"account-block\"]//div[1]//i[@title=\"Eliminar tarjeta\"]"));
    public static final Target BUTTON_CONFIRMARELIMINAR_TARJETA = Target.the("Button Confirmar Eliminar tarjeta").located(By.xpath("//div[@id='cboxLoadedContent']/descendant::button[contains(text(),'Confirmar')]"));



}
