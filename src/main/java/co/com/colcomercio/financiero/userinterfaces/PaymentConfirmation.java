package co.com.colcomercio.financiero.userinterfaces;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class PaymentConfirmation extends PageObject {
    public static final Target BUTTON_CONTINUE_DISCOUNT =Target.the("Boton Continuar ruleta").located(By.xpath("//div[@class=\"modal-content m-c-gana-50\"]//a[@id=\"start-game\"]"));
    public static final Target BUTTON_CLOSE_DISCOUNT =Target.the("Boton Cerrar ruleta").located(By.xpath("//div[@class=\"modal-content m-c-gana-50\"]//a[contains(text(),'Cerrar')]"));
    public static final Target VALIDATE_SUCESS_PAY =Target.the("Texto pago exitoso").located(By.xpath("//div[@class=\"success-payment__left-misc\"]//div[contains(text(),' Pago exitoso')]"));
    public static final Target VALIDATE_PENDING_PAY =Target.the("Texto pago pendiente").located(By.xpath("//div[@class=\"success-payment__left-misc__title success-payment__left-misc__title--pending\"]"));

}
