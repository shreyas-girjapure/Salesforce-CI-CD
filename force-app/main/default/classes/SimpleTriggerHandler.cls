public class SimpleTriggerHandler {

       
    
    public static void getAllContactsOfAccount(Map<Id,Account> accountMap){
        Set<Id> accountIds = accountMap.keySet();            
        List<Account> accList = [Select id , name, (Select id,firstName,lastName from contacts) from account where id In: accountIds];        
        List<Contact> cons ;
        for(Account a : accList){
            String name = a.Name;
            for(Contact c : a.contacts){
                c.firstName =a.Name;
                cons.add(c);
            }
        }        
    }
    
}