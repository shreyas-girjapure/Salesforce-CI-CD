public with sharing class KnowledgeController {
    public KnowledgeController() {

    }
    @AuraEnabled(cacheable=true)
    public static List<Knowledge__kav> findArticles(String searchKey){
        if(searchKey==''){
            return null;
        }
        String key = '%' + searchKey + '%';
        return [
            SELECT Answer__c,Question__c,Title FROM Knowledge__kav WHERE Title LIKE:key
        ];
    }
    @AuraEnabled(cacheable=true)
    public static List<Knowledge__kav> getAllArticles(){        
        return [
            SELECT Answer__c,Title FROM Knowledge__kav
        ];
    }
    @AuraEnabled(cacheable=true)
    public static Integer getNum(){        
        return [SELECT count() FROM Knowledge__kav];
    }
}