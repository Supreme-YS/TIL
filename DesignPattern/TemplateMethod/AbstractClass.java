package DesignPattern.TemplateMethod;

public abstract class AbstractClass {
    public abstract String showMe(); // 추상 클래스의 추상 메서드 showMe 정의,
    public void printMessage() {
        System.out.print("As you can see, ");
        System.out.print(showMe()); // 12~16 번째 줄에서 구현된 메서드가 실행이된다.
        System.out.println(" is my name.");
    }
}

class Smith extends AbstractClass {
    @Override // 위에서 정의한 public abstract String showMe();를 구현한다.
    public String showMe() {  // 18번째 줄의 new Smith로 Smith 객체가 만들어질 때 구현된다.
        return "Smith";       //
    }

    public static void main(String[] args) {
        AbstractClass myObject = new Smith(); // Smith 객체의 주소값이 myObject에 담김
        myObject.printMessage(); // 추상 메서드가 호출이 되면,
    }
}