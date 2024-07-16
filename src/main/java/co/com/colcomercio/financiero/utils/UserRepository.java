package co.com.colcomercio.financiero.utils;

import java.util.Optional;

import co.com.colcomercio.financiero.models.registeruser.UserEcomerce;
import co.com.colcomercio.financiero.models.registeruser.UsersEcomerceList;

public class UserRepository {
    private static UsersEcomerceList usersEcomerceList;
    public static synchronized UserEcomerce getUser(){
        if(usersEcomerceList == null)
            usersEcomerceList = getUsers();
        return getUserRefresh();
    }

    private static UsersEcomerceList getUsers(){
        Users user = new Users();
        return user.chargeUsersOfJson();
    }

    private static UserEcomerce getUserRefresh() {
        Optional<UserEcomerce> userEcommerce = usersEcomerceList.getUsers().stream()
                .filter(userFree -> !userFree.isUsed()).findFirst();
        if(userEcommerce.isPresent()) {
            userEcommerce.get().setUsed(true);
            return userEcommerce.get();
        }
        usersEcomerceList.getUsers().stream().forEach(userEcommerceRefresh -> userEcommerceRefresh.setUsed(false));
        return getUserRefresh();
    }
}
