package co.com.colcomercio.financiero.interactions;

import net.serenitybdd.core.pages.WebElementFacade;

public class Wait {
    public static boolean forElement(WebElementFacade element,long time){
        boolean result = false;
        for(int i=0;i<time/2;i++){
            try {
                Thread.sleep(500);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            if(element.isCurrentlyVisible()){
                result=true;
                break;
            }
            if (i == 5){
                break;
            }
        }
        return result;
    }

    public static void relativeTime(long time){
        try {
            Thread.sleep(time*1000);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}