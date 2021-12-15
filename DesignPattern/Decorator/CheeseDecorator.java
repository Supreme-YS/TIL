package DesignPattern.Decorator;

public class CheeseDecorator extends ToppingDecorator {

    public CheeseDecorator(Sandwich sandwich) {
        super(sandwich);
    }

    public void make() {
        super.make();
        addCheese();
    }

    private void addCheese() {
        System.out.println("Add Cheese");
    }
}
