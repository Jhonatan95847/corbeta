package co.com.colcomercio.financiero.utils;

import co.com.colcomercio.financiero.models.UsersEcomerceList;
import com.google.gson.*;
import com.google.gson.reflect.TypeToken;

import java.io.*;
import java.lang.reflect.Type;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.stream.Collectors;


public class JsonUtil {

    private Gson gson = new Gson();

    public UsersEcomerceList jsonDataToObjectForUsers() throws FileNotFoundException {
        Reader reader = new FileReader("src/test/resources/data/users.json");
        return gson.fromJson(reader, UsersEcomerceList.class);
    }
}