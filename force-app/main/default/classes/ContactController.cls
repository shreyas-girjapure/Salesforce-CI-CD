public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts(){
                    return [
                    SELECT id,FirstName, LastName, Email
                    FROM Contact
                    WITH SECURITY_ENFORCED
                    Limit 10
                ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Contact> getContactsByName(String key){
        String tempKey = '%'+key+'%';
        return [
            SELECT Id, Name FROM Contact
            WHERE Name LIKE :tempKey
            WITH SECURITY_ENFORCED
            LIMIT 10
        ];
    }
}