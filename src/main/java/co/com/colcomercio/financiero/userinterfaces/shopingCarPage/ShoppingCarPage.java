package co.com.colcomercio.financiero.userinterfaces.shopingCarPage;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class ShoppingCarPage extends PageObject {
    public static final Target VALIDATE_TITLE_CAR =Target.the("Texto carrito de compras").located(By.xpath("//h1[text()=' Carrito de compras']"));
    public static final Target VALIDATE_QUANTITY_PRODUCTS =Target.the("Texto Productos en el carrito").located(By.xpath("//h4[text()=' Productos en el carrito:']"));
    public static final Target BUTTON_CONTINUE_BUY =Target.the("Boton continuar comprando").located(By.xpath("//h1[text()=' Carrito de compras']"));
    public static final Target TEXT_VOID_CAR =Target.the("Texto carro de compras vacio").located(By.xpath("//div[@class=\"alert info js-empty-cart-message\"]"));
    public static final Target BUTTON_GOTO_HOME =Target.the("Botton volver al inicio").located(By.xpath("//div[@class=\"empty-cart-carousel js-empty-cart-carousel\"]//a"));

}
