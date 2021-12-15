package DesignPattern.Proxy;

public class Proxy implements IService {
    IService iService;

    @Override
    public String run() {
        System.out.println("호출에 대한 흐름 제어가 주 목적이며, 반환 결과를 그대로 전달");
        iService = new Service();
        return iService.run();
    }
}
