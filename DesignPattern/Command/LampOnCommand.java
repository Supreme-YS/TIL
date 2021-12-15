package DesignPattern.Command;

public class LampOnCommand implements Command {
    private Lamp lamp;

    public LampOnCommand(Lamp lamp) {
        this.lamp = lamp;
    }

    public void run() {
        lamp.turnOn();
    }
}
