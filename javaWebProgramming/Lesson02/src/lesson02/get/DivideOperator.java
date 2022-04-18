package lesson02.get;

public class DivideOperator implements Operator {

	@Override
	public String getName() {
		return "/";
	}

	@Override
	public double execute(double a, double b) throws Exception {
		return a / b;
	}

}
