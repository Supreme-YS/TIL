package DesignPattern.Decorator;

public class Client {
    public static void main(String[] args) {
        // Lettuce Sandwich
        Sandwich sandwichWithLettuce = new LettuceDecorator(new Bread());
        sandwichWithLettuce.make();
        System.out.println("------------------");

        // Lettuce + Cheese Sandwich
        Sandwich sandwichWithLettuceAndCheese = new CheeseDecorator(new LettuceDecorator(new Bread()));
        sandwichWithLettuceAndCheese.make();
    }
}
