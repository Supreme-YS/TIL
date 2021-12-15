package DesignPattern.Proxy;

public class Client {
    public static void main(String[] args) {
        // 직접 호출하지 않고, 프록시를 호출한다.
        IService proxy = new Proxy();
        System.out.println(proxy.run());
    }
}
