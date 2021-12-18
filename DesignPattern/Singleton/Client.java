package DesignPattern.Singleton;

public class Client {
    public static void main(String[] args) {
        Normal normal1 = new Normal();
        Normal normal2 = new Normal();

        // Error 발생!
        // 'Singleton()' has private access in 'DesignPattern.Singleton.Singleton'
        // Singleton singleton1 = new Singleton(); // 이렇게 생성 불가능하다. private이라서

        Singleton singleton1 = Singleton.getInstance();
        Singleton singleton2 = Singleton.getInstance();

        /* 출력결과
        Normal Instance Created
        Normal Instance Created
        Singleton Instance Created
         */

        if(normal1 == normal2) {
            System.out.println("normal1 과 normal2는 같다");
        } else {
            System.out.println("normal1 과 normal2는 다르다");
        }

        if(singleton1 == singleton2) {
            System.out.println("singleton1 과 singleton2는 같다");
        } else {
            System.out.println("singleton1 과 singleton2는 다르다");
        }

        /* 출력결과
        Normal Instance Created
        Normal Instance Created
        Singleton Instance Created
        normal1 과 normal2는 다르다
        singleton1 과 singleton2는 같다
         */
    }
}
