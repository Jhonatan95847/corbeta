package co.com.colcomercio.financiero.userinterfaces;

import net.serenitybdd.screenplay.targets.Target;
import net.serenitybdd.core.pages.PageObject;
import org.openqa.selenium.By;

public class SearchResultsPage extends PageObject {
    public static final Target BUTTON_FIRST_RESULT =Target.the("Boton Primer resultado de busqueda").located(By.xpath("//div[@id=\"js-hits\"]//ol//li//h3"));
    public static final Target BUTTON_ADDCAR =Target.the("Boton Agregar al carrito").located(By.xpath("//li[1]//i[@class=\"alk-icon-carrito-plus\"]"));
    public static final Target BUTTON_VERDETALLES =Target.the("Boton Ver detalles").located(By.xpath("//li[1]//a[contains(text(),'Ver más detalles')]"));
    public static final Target VALIDATE_PRICE =Target.the("Texto Precio").located(By.xpath("//li[1]//div[@class=\"hidden-sm hidden-xs\"]//span[@class=\"price\"]"));
    public static final Target VALIDATE_NAME_PRODUCT =Target.the("Texto Nombre de producto").located(By.xpath("//li[1]//div[@class=\"product__item__information__brand\"]"));
    public static final Target VALIDATE_IMAGE_PRODUCT =Target.the("Imagen del producto").located(By.xpath("//li[1]//div[@class=\"product__item__information__image js-algolia-product-click\"]"));
    public static final Target VALIDATE_DATA_PRODUCT =Target.the("Datos del producto").located(By.xpath("//li[1]//ul[@class=\"product__item__information__key-features--list js-key-list\"]"));
    public static final Target VALIDATE_FILTER =Target.the("Filtrar productos").located(By.xpath("//div[@id=\"product-facet\"]"));



}
