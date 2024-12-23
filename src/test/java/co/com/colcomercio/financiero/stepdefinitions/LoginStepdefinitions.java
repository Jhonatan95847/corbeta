package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.tasks.login.Login;
import co.com.colcomercio.financiero.tasks.login.LoginNewUser;
import co.com.colcomercio.financiero.tasks.login.SoftLogin;
import co.com.colcomercio.financiero.tasks.login.SoftLoginNewUser;
import co.com.colcomercio.financiero.tasks.paymetProcess.AddYourData;
import co.com.colcomercio.financiero.utils.GetDataModel;
import io.cucumber.java.es.Cuando;
import io.cucumber.java.es.Dado;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;


public class LoginStepdefinitions {
    private NewUser withTheData;
    private static final Logger logger = LogManager.getLogger(LoginStepdefinitions.class);
//HARD LOGIN
    @Dado("que un cliente {string} inicia sesión en ecomerce")
    public void queUnClienteDeseaRealizarUnaCompra(String cliente) {

        withTheData = GetDataModel.newUser("datos_nuevo_usuario");
        if (cliente.equals("nuevo")){
            logger.info("Inicia sesion con usuario nuevo");
            theActorInTheSpotlight().attemptsTo(
                    LoginNewUser.newRegistry(withTheData)
            );
        } else if (cliente.equals("registrado")) {
            logger.info("Inicia sesion con usuario registrado");
            theActorInTheSpotlight().wasAbleTo(
                    Login.inMyProfile()
            );
        }
    }
//SOFT LOGIN
    @Cuando("inicia sesion en la pagina de alkosto como un cliente {string}")
    public void iniciaSesionYDeseaRealizarLaCompraComoUnCliente(String cliente) {
        withTheData = GetDataModel.newUser("datos_nuevo_usuario");
        if (cliente.equals("registrado")){
            theActorInTheSpotlight().attemptsTo(
                    SoftLogin.inMyProfile()
                    //AddPassLogin.addPass(withTheUserData)
            );
        } else if (cliente.equals("nuevo")) {
            theActorInTheSpotlight().attemptsTo(
                    SoftLoginNewUser.newRegistry(),
                    AddYourData.addYourData(withTheData)
            );
        }

    }
}
