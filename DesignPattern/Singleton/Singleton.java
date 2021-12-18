package DesignPattern.Singleton;

public class Singleton {
    // private 접근 제한자로 인해 new 연산자로 객체를 생성하지못하는 클래스가 되어버린 Singleton 클래스
    private static Singleton singleton = new Singleton();

    private Singleton() {
        System.out.println("Singleton Instance Created");
    }

    // 정적으로 싱글톤 객체를 선언
    // 위에 private로 생성된 생성자는 자기 자신에서는 호출될 수 있음.
    // 이렇게 생성한 싱글톤 클래스의 객체를 getInstance() 메서드를 통해서 반환.
    public static Singleton getInstance() {
        return singleton;
    }
}
