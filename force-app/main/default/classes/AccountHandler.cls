public  class AccountHandler {
    
    public static Account insertNewAccount(String name){
        Account acc = new Account(Name=name);
        try {
            insert acc;            
            return acc;
        } catch (DmlException d) {
            System.debug('>>>>>>>>>>>>>>>>>>>>>>>>>>');
            return null;
        }
    }    
}