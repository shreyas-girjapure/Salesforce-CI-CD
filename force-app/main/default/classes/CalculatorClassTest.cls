@isTest
public class CalculatorClassTest {
	
    @isTest
    public static void additionTest(){
        Integer one = 2 ;
        Integer two = 4;
        CalculatorClass.addition(one,two);
        
       Integer anotherOne = -2 ;
        Integer anotherTwo = 4;
        CalculatorClass.addition(anotherOne,anotherTwo);
        
    }
    
}