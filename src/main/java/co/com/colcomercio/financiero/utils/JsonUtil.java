package co.com.colcomercio.financiero.utils;

import co.com.colcomercio.financiero.models.registeruser.UsersEcomerceList;
import com.google.gson.*;

import java.io.*;


public class JsonUtil {

    private Gson gson = new Gson();

    public UsersEcomerceList jsonDataToObjectForUsers() throws FileNotFoundException {
        Reader reader = new FileReader("src/test/resources/data/users.json");
        return gson.fromJson(reader, UsersEcomerceList.class);
    }
}