package DesignPattern.Composite;

public class Triangle implements Shape {

    @Override
    public void draw(String fillcolor) {
        System.out.println("Drawing Triangle with color " + fillcolor);
    }

}
