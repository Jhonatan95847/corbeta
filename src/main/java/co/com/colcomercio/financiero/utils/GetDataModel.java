package co.com.colcomercio.financiero.utils;

import co.com.colcomercio.financiero.models.newUsers.NewUser;
import co.com.colcomercio.financiero.models.paymentCard.PaymentCard;
import co.com.colcomercio.financiero.models.productList.ProductList;
import co.com.colcomercio.financiero.models.users.Users;

import java.util.List;

public class GetDataModel {
    private GetDataModel() {
    }

    public static Users users(String key) {
        List<Users> data = MyReader.ofInformationWith("src/test/resources/data/user.json")
                .andModel(Users.class);
        return data.stream().filter(t -> t.getKey().equals(key)).findFirst().get();
    }

    public static NewUser newUser(String key) {
        List<NewUser> data = MyReader.ofInformationWith("src/test/resources/data/newUser.json")
                .andModel(NewUser.class);
        return data.stream().filter(t -> t.getKey().equals(key)).findFirst().get();
    }

    public static ProductList productList(String key) {
        List<ProductList> data = MyReader.ofInformationWith("src/test/resources/data/productList.json")
                .andModel(ProductList.class);
        return data.stream().filter(t -> t.getKey().equals(key)).findFirst().get();
    }

    public static PaymentCard paymentCard(String key) {
        List<PaymentCard> data = MyReader.ofInformationWith("src/test/resources/data/paymentCard.json")
                .andModel(PaymentCard.class);
        return data.stream().filter(t -> t.getKey().equals(key)).findFirst().get();
    }
}
