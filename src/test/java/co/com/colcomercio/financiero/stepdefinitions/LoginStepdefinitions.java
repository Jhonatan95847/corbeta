package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.models.users.Users;
import co.com.colcomercio.financiero.tasks.login.Login;
import co.com.colcomercio.financiero.tasks.login.LoginNewUser;
import co.com.colcomercio.financiero.tasks.login.SoftLogin;
import co.com.colcomercio.financiero.tasks.login.SoftLoginNewUser;
import co.com.colcomercio.financiero.tasks.paymetProcess.AddYourData;
import co.com.colcomercio.financiero.utils.GetDataModel;
import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.Dado;
import net.serenitybdd.screenplay.actors.OnStage;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;


public class LoginStepdefinitions {
    private NewUser withTheData;
    private Users withTheUserData;
    private static final Logger logger = LogManager.getLogger(LoginStepdefinitions.class);

    @Dado("que un cliente {string} inicia sesión y desea realizar una compra")
    public void queUnClienteDeseaRealizarUnaCompra(String cliente) {

        withTheData = GetDataModel.newUser("datos_nuevo_usuario");
        withTheUserData = GetDataModel.users("usuario_registrado");

        if (cliente.equals("nuevo")){
            logger.info("Inicia sesion con usuario nuevo");
            theActorInTheSpotlight().attemptsTo(
                    LoginNewUser.newRegistry(withTheData)
            );
        } else if (cliente.equals("registrado")) {
            logger.info("Inicia sesion con usuario registrado");
            OnStage.theActorInTheSpotlight().wasAbleTo(
                    Login.inMyProfile(withTheUserData)
            );
        }
    }

    @Cuando("inicia sesion y desea realizar la compra como un cliente {string}")
    public void iniciaSesionYDeseaRealizarLaCompraComoUnCliente(String cliente) {
        withTheUserData = GetDataModel.users("usuario_registrado");
        withTheData = GetDataModel.newUser("datos_nuevo_usuario");
        if (cliente.equals("registrado")){
            theActorInTheSpotlight().attemptsTo(
                    SoftLogin.inMyProfile(withTheUserData)
            );
        } else if (cliente.equals("nuevo")) {
            theActorInTheSpotlight().attemptsTo(
                    SoftLoginNewUser.newRegistry(),
                    AddYourData.addYourData(withTheData)
            );
        }

    }
}
