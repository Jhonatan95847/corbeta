package co.com.colcomercio.financiero.models.productList;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Data
public class ProductList {
    private String key;
    private DataProducts dataProductList;
}