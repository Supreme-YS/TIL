package DesignPattern.Command;

public class OkGoogle {

    private Command command;

    public void setCommand(Command command) {
        this.command = command;
    }

    public void talk() {
        command.run();
    }
}
