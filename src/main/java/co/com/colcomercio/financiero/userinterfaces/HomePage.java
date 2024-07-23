package co.com.colcomercio.financiero.userinterfaces;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;
import net.thucydides.core.annotations.DefaultUrl;


@DefaultUrl("https://alkostostorefront.cfll9tllxj-alkostoco2-s1-public.model-t.cc.commerce.ondemand.com/")
public class HomePage extends PageObject {

    public static final Target BUTTON_MYACCOUNT =Target.the("Boton Mi Cuenta").located(By.xpath("//li[@id=\"js-myaccount-header\"]//span[contains(text(),'Mi cuenta')]"));
    public static final Target BUTTON_MYCAR = Target.the("Boton Mi carrito").located(By.xpath("//li[@id=\"js-mycart-header\"]"));
    public static final Target BUTTON_SEARCH_BAR = Target.the("Boton busqueda").located(By.xpath("//button[@id=\"js-search-button\"]"));
    public static final Target EDITBOX_SEARCH_BAR = Target.the("Barra de busqueda").located(By.xpath("//input[@id=\"autocomplete-0-input\"]"));
    public static final Target VALIDATE_ALKOSTO = Target.the("Imagen Alkosto").located(By.xpath("//img[@title=\"Alkosto\"]"));
    public static final Target VALIDATE_BANNER = Target.the("Banner Alkosto").located(By.xpath("//ul[@id=\"banner\"]"));
    public static final Target VALIDATE_CATEGORIES = Target.the("Banner Alkosto").located(By.xpath("//ul[@class=\"main-navigation__container js-main-navigation-categories\"]"));



}
