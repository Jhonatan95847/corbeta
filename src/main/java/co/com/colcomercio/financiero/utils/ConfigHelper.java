package co.com.colcomercio.financiero.utils;

import net.serenitybdd.core.environment.EnvironmentSpecificConfiguration;
import net.thucydides.core.util.EnvironmentVariables;

public class ConfigHelper {

    private final EnvironmentVariables environmentVariables;

    public ConfigHelper(EnvironmentVariables environmentVariables) {
        this.environmentVariables = environmentVariables;
    }

    public String getBaseUrl() {
        return EnvironmentSpecificConfiguration.from(environmentVariables).getProperty("base.url");
    }
}