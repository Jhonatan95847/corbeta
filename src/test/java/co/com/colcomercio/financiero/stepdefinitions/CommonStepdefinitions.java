package co.com.colcomercio.financiero.stepdefinitions;


import co.com.colcomercio.financiero.userinterfaces.HomePage;
import co.com.colcomercio.financiero.utils.Paralelo.AsignarUsuario;
import co.com.colcomercio.financiero.utils.Paralelo.LiberarUsuario;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.es.Dado;
import net.serenitybdd.screenplay.actions.Open;
import net.serenitybdd.screenplay.actors.OnStage;
import net.serenitybdd.screenplay.actors.OnlineCast;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import static net.serenitybdd.screenplay.actors.OnStage.*;

public class CommonStepdefinitions {
    private static final Logger logger = LogManager.getLogger(LoginStepdefinitions.class);
    HomePage homePage;



    @Before
    public void setUp() {
        logger.info("***********************************************************************************************************");
        logger.info("*********************[ Configuration ] - Initializing driver configuration*********************************");
        logger.info("***********************************************************************************************************");
        OnStage.setTheStage(new OnlineCast());
    }

    @Dado("que el Cliente Colcomercio ingresa al storefront")
    public void queUnAsesorPqrDeseaAccederAlCrmAlkomprar() {
        theActorCalled("actor").wasAbleTo(
                Open.browserOn().  thePageNamed("pages.alkosto"),
                AsignarUsuario.alActor()
        );
    }

    @After
    public void tearDown() {
        theActorInTheSpotlight().attemptsTo(LiberarUsuario.delActor());
        OnStage.drawTheCurtain();
    }
}