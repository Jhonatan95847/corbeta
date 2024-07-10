package co.com.colcomercio.financiero.interactions;

import org.openqa.selenium.WebDriver;

import java.util.HashMap;
import java.util.Map;

public class RemoveText {
    static WebDriver driver;
    public static Map<String, String> ScenaryData = new HashMap<>();
    public void removeKey(String key) {



        boolean exist = this.ScenaryData.containsKey(key);
        if (exist) {
            String text = this.ScenaryData.get(key);
            this.ScenaryData.remove(key);
        } else {
            System.out.println("No se encontro la variable para removerla");
        }


    }

}
