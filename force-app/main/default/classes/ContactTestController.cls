public with sharing class ContactTestController {
    public ContactTestController() {

    }

    @AuraEnabled
    public static List<Contact> getContactByName(String key){
        String tempKey = '%'+key+'%';
        return [Select id , Name from contact where name like : tempKey limit 10 ];
    }
}