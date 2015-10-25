package nl.tomasharkema;

public class Main {

    public static void main(String[] args) {
        Product auto = new Auto();
        Product home = new Home();

        Price price = new Price();

        price.currency = Currency.EUR;
        price.value = 1000;

        auto.price = price;

        price.currency = Currency.DOL;
        price.value = 10000000;

        home.price = price;

        // auto.price?

        System.out.println(price.value);
        System.out.println(auto.price.value);
        System.out.println(home.price.value);
    }
}
