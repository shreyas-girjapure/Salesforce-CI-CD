public class CalculatorClass {

    public static Integer addition(Integer a, Integer b){
        Integer one = a;
        Integer two = b;
        if(a < 0 || b < 0){
            return -1;
        }
        return one + two;
    }
    
}