package DesignPattern.Proxy;

// 대통령
public class Service implements IService {
    @Override
    public String run() {
        return "Good Service";
    }
}
