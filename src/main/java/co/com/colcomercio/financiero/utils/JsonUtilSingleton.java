package co.com.colcomercio.financiero.utils;


import co.com.colcomercio.financiero.models.registeruser.UsersEcomerceList;

import java.io.FileNotFoundException;

public class JsonUtilSingleton {
    private static UsersEcomerceList usersEcommerceList;

    public static UsersEcomerceList getUsersList() throws FileNotFoundException {
        if (usersEcommerceList == null) {
            usersEcommerceList = new JsonUtil().jsonDataToObjectForUsers();
        }
        return usersEcommerceList;
    }
}
