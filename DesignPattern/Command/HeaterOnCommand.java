package DesignPattern.Command;

public class HeaterOnCommand implements Command {
    private Heater heater;

    public HeaterOnCommand(Heater heater) {
        this.heater = heater;
    }

    public void run() {
        heater.powerOn();
    }
}
