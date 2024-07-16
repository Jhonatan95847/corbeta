package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.models.registeruser.UserEcomerce;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.tasks.login.Login;
import co.com.colcomercio.financiero.tasks.login.LoginNewUser;
import co.com.colcomercio.financiero.utils.GetDataModel;
import io.cucumber.java.es.Cuando;


import static net.serenitybdd.screenplay.GivenWhenThen.seeThat;
import static net.serenitybdd.screenplay.actors.OnStage.theActorInTheSpotlight;


public class LoginStepdefinitions {
    public ThreadLocal<UserEcomerce> actualUser = ThreadLocal.withInitial(() -> null);
    private NewUser withTheData;


    @Cuando("intenta iniciar sesión en la aplicación")
    public void intentaIniciarSesionEnLaAplicacion() {

        theActorInTheSpotlight().wasAbleTo(Login.inMyProfile(false,actualUser.get()));

    }

    @Cuando("un cliente nuevo se quiere registrar")
    public void unClienteNuevoSeQuiereRegistrar() {
        withTheData = GetDataModel.newUser("datos_nuevo_usuario");

        theActorInTheSpotlight().attemptsTo(
                LoginNewUser.newRegistry(withTheData)
        );
    }



}
