package co.com.colcomercio.financiero.userinterfaces.paymentPage;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class ReviewAndApprovalPage extends PageObject {
    public static final Target VALIDATE_REVISION =Target.the("Texto tus datos").located(By.xpath("//div[@class=\"checkout-steps__container active\"]//div[text()=' Revisión y Aprobación']"));
    public static final Target VALIDATE_CANTIDAD_PRODUCTO =Target.the("Texto tus datos").located(By.xpath("//div[@class=\"checkout-steps__container active\"]//p[text()=' Productos en tu pedido (1):']"));
    public static final Target VALIDATE_PRICE_TOTAL =Target.the("Texto tus datos").located(By.xpath("//div[@class=\"item__price__main\"]"));
    public static final Target VALIDATE_CANTIDAD_TOTAL =Target.the("Texto tus datos").located(By.xpath("//div[@class=\"item__quantity__box\"]"));
    public static final Target BUTTON_CONTINIAR_APROVADO =Target.the("Texto tus datos").located(By.xpath("//form[@id=\"placeOrderForm1\"]//button[@id=\"placeOrder\"]"));


}
