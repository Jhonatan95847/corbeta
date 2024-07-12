package co.com.colcomercio.financiero.userinterfaces.paymentPage;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class YourDataPage extends PageObject {
    public static final Target VALIDATE_TUS_DATOS =Target.the("Texto tus datos").located(By.xpath("//div[text()=' Tus datos']"));
    public static final Target EITBOX_EMAIL_TUSDATOS =Target.the("Campo correo tus datos").located(By.xpath("//form[@id=\"signInPostForm\"]//input[@idid=\"registerEmail\"]"));
    public static final Target EITBOX_NAME_TUSDATOS =Target.the("Campo Nombre tus datos").located(By.xpath("//form[@id=\"signInPostForm\"]//input[@id=\"firstName\"]"));
    public static final Target EITBOX_LASTNAME_TUSDATOS =Target.the("Campo Apellido tus datos").located(By.xpath("//form[@id=\"signInPostForm\"]//input[@id=\"lastName\"]"));
    public static final Target EITBOX_PHONE_TUSDATOS =Target.the("Campo telefono tus datos").located(By.xpath("//form[@id=\"signInPostForm\"]//div[@class=\"float-input-group phone-input\"]"));
    public static final Target BUTTON_CONTINUE_TUSDATOS =Target.the("Boton continuar tus datos").located(By.xpath("//button[@id=\"js-buttonSignIn\"]"));
    public static final Target BUTTON_EDIT_YOURDATA =Target.the("Boton continuar tus datos").located(By.xpath("//button[@id=\"js-buttonSignIn\"]"));

}
