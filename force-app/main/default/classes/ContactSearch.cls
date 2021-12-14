public with sharing class ContactSearch {
    public static List<Contact> searchForContacts(String lastName,String postalCode){
        Contact[] cons = [SELECT  Id , MailingPostalCode FROM  Contact WHERE (LastName=:lastName AND MailingPostalCode=:postalCode)LIMIT 10];
        return cons;
    }
}