package com.lanou.forEach;

import java.util.ArrayList;
import java.util.List;

public class GoodsDao {

    /**
     * 取所有的商品信息
     *
     * @return List
     */
    public static List<Product> getAllProducts() {
        List<Product> products = new ArrayList<Product>();

        products.add(new Product("联想笔记本", "北京", 4399));
        products.add(new Product("联想商用电脑", "北京", 8399));
        products.add(new Product("惠普打印机", "不详", 1399));
        products.add(new Product("惠普商用笔记本", "上海", 7999));
        products.add(new Product("惠普商用台式机", "深圳", 5299));
        products.add(new Product("DELL笔记本", "天津", 4399));
        products.add(new Product("DELL家用台式机", "天津", 4399));
        products.add(new Product("索尼笔记本", "日本原装", 13399));
        products.add(new Product("东芝笔记本", "日本原装", 12499));

        return products;
    }
}
