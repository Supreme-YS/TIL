package DesignPattern.FactoryMethod;

public class TypeFactory {
    public Type createType(String type) {
        Type returnType = null;

        switch (type) {
            case "A":
                returnType = new TypeA();
                break;
            case "B":
                returnType = new TypeB();
                break;
        }
        return returnType;
    }
}
