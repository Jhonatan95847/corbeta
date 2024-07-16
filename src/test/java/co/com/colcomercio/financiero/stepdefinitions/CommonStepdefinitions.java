package co.com.colcomercio.financiero.stepdefinitions;

import co.com.colcomercio.financiero.models.UserEcomerce;
import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.questions.IsElementPresent;
import co.com.colcomercio.financiero.tasks.login.Login;
import co.com.colcomercio.financiero.tasks.login.LoginNewUser;
import co.com.colcomercio.financiero.userinterfaces.HomePage;
import co.com.colcomercio.financiero.utils.GetDataModel;
import co.com.colcomercio.financiero.utils.UserRepository;
import io.cucumber.java.Before;
import io.cucumber.java.es.Dado;
import net.serenitybdd.screenplay.actions.Open;
import net.serenitybdd.screenplay.actors.OnStage;
import net.serenitybdd.screenplay.actors.OnlineCast;


import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import static co.com.colcomercio.financiero.userinterfaces.HomePage.VALIDATE_ALKOSTO;
import static net.serenitybdd.screenplay.GivenWhenThen.seeThat;
import static net.serenitybdd.screenplay.actors.OnStage.*;

public class CommonStepdefinitions {

    public static final ThreadLocal<UserEcomerce> actualUser = ThreadLocal.withInitial(() -> null);
    private NewUser withTheData;

    private static final Logger logger = LogManager.getLogger(LoginStepdefinitions.class);
    HomePage homePage;
    @Before
    public void setUp() {
        logger.info("***********************************************************************************************************");
        logger.info("[ Configuration ] - Initializing driver configuration");
        logger.info("***********************************************************************************************************");
        OnStage.setTheStage(new OnlineCast());
        UserEcomerce user = UserRepository.getUser();
        actualUser.set(user);
    }

    @Dado("que el Cliente Colcomercio ingresa al storefront")
    public void queUnAsesorPqrDeseaAccederAlCrmAlkomprar() {
        theActorCalled("actor").wasAbleTo(
                Open.browserOn().thePageNamed("pages.alkosto")
        );
        //Open.url("https://alkostostorefront.cfll9tllxj-alkostoco2-s1-public.model-t.cc.commerce.ondemand.com/");
        //theActorInTheSpotlight().attemptsTo(Login.ofAccount());

    }

    @Dado("que un cliente {string} inicia sesión y desea realizar una compra")
    public void queUnClienteDeseaRealizarUnaCompra(String cliente) {

        withTheData = GetDataModel.newUser("datos_nuevo_usuario");

        if (cliente.equals("nuevo")){
            logger.info("Inicia sesion con usuario nuevo");
            theActorInTheSpotlight().attemptsTo(
                    LoginNewUser.newRegistry(withTheData)
            );
        } else if (cliente.equals("registrado")) {
            logger.info("Inicia sesion con usuario registrado");
            OnStage.theActorInTheSpotlight().wasAbleTo(
                    Login.inMyProfile(false,actualUser.get())
            );
        }
    }


/*
    @Cuando("intenta iniciar sesión en la aplicación")
    public void intentaIniciarSesionEnLaAplicacion() {

        OnStage.theActorInTheSpotlight().wasAbleTo(Login.inMyProfile(false,actualUser.get()));

    }

    @Cuando("un cliente nuevo se quiere registrar")
    public void unClienteNuevoSeQuiereRegistrar() {
        withTheData = GetDataModel.newUser("datos_nuevo_usuario");

        theActorInTheSpotlight().attemptsTo(
                LoginNewUser.newRegistry(withTheData)
        );
    }*/


}