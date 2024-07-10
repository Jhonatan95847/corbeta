package co.com.colcomercio.financiero.userinterfaces.loginPages;

import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.screenplay.targets.Target;
import org.openqa.selenium.By;

public class LoginRegisterUserPage extends PageObject {
    public static final Target BUTTON_LOGIN_MAIL =Target.the("Boton Login Mail").located(By.xpath("//li[@id=\"js-loginEmailPass\"]"));
    public static final Target BUTTON_LOGIN_GOOGLE =Target.the("Boton Login Google").located(By.xpath("//li[@id=\"js-loginWithGoogle\"]"));
    public static final Target BUTTON_LOGIN_FACEBOOK =Target.the("Boton Login Facebook").located(By.xpath("//li[@id=\"js-loginWithFacebook\"]"));
    public static final Target BUTTON_LOGIN_WHATS =Target.the("Boton Login Wats").located(By.xpath("//li[@id=\"js-loginWhatsapp\"]"));
    public static final Target BUTTON_LOGIN_EMAILVAL =Target.the("Boton Login Validacion Email").located(By.xpath("//li[@id=\"js-loginEmail\"]"));
    public static final Target BUTTON_LOGIN_SMS =Target.the("Boton Login SMS").located(By.xpath("//li[@data-login-type=\"sms\"]"));
    public static final Target TEXT_FIND_ACOUNT =Target.the("Texto cuenta encontrada").located(By.xpath("//div[@class=\"login-options have-email\"]//span/b[contains(text(),'¡Listo, encontramos tu cuenta!')]"));
}