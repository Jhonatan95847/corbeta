package co.com.colcomercio.financiero.userinterfaces.shopingCarPage;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class TotalInfo extends PageObject {
    public static final Target VALIDATE_TITLE =Target.the("Texto mi carrito").located(By.xpath("//div[contains(text(),' Mi carrito')]"));
    public static final Target VALIDATE_SUBTOTAL =Target.the("Texto sutotal").located(By.xpath("//div[contains(text(),' Subtotal')]"));
    public static final Target VALIDATE_DISCOUNT =Target.the("Texto descuento").located(By.xpath("//div[@class=\"mycart__discount col-xs-12\"]"));
    public static final Target VALIDATE_TOTAL =Target.the("Texto suvtotal").located(By.xpath("//div[@class=\"cart-summary-info js-cart-summary-info\"]//div[text()=' Total']"));
    public static final Target BUTTON_GOTO_PAY =Target.the("Boton ir a pagar").located(By.xpath("//button[@id=\"js-go-to-pay\"]"));
    public static final Target TEXTO_ESCRIBE_CORREO =Target.the("Texto escribe tu correo").located(By.xpath("//div[contains(text(),' Escribe tu correo para iniciar la compra')]"));
    public static final Target BUTTON_CONTINUE_SOFT =Target.the("Boton continuar softlogin").located(By.xpath("(//button[contains(text(),' Continuar')])[1]"));


}
