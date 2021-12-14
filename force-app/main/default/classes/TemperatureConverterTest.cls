@isTest
private class TemperatureConverterTest {
    @TestSetup
    static void testSetup(){
        List<Account> accList = new List<Account>();
        
        for(Integer i = 0 ; i < 200;i++){
            accList.add(new Account(Name='Test Account TestClass'+i));
        }
        
        insert accList;
    }
    @isTest static void testWarmTemp() {
       
        List<Account> accList = [Select id, Name from account where name like '%Test Account TestClass%'];
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(70);
        System.assertEquals(21.11,celsius);
    }
    
    @isTest static void testFreezingPoint() {
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(32);
        System.assertEquals(0,celsius);
    }
    @isTest static void testBoilingPoint() {
        List<Account> accListTemp = new List<Account>();
        accListTemp = [Select id , Name from account where Name like '%Test%'];
        Integer lenOfList = accListTemp.size();
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(212);        
        System.assertEquals(100,celsius,'Boiling point temperature is not expected.');
    } 
    
    @isTest static void testNegativeTemp() {
        List<User> listUser = new List<User>();
        listUser = [Select id, username from User limit 10];
        Integer lim = Limits.getQueries();
        Integer limAnother = Limits.getLimitQueries();
        Decimal celsius = TemperatureConverter.FahrenheitToCelsius(-10);
        System.assertEquals(-23.33,celsius);
    }
     
}