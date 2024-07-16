package co.com.colcomercio.financiero.utils;

import co.com.colcomercio.financiero.models.registeruser.UsersEcomerceList;
import java.io.FileNotFoundException;

public class Users {


    public UsersEcomerceList userEcommerceList;

    public UsersEcomerceList chargeUsersOfJson() {
        userEcommerceList = new UsersEcomerceList();
        try {
            userEcommerceList = JsonUtilSingleton.getUsersList();
        } catch (FileNotFoundException e) {
            System.err.println("No se encontro archivo json en la ruta especificada");
        }
        return userEcommerceList;
    }
}
