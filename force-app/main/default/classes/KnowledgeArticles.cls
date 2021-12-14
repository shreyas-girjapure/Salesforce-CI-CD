public class KnowledgeArticles {
	@AuraEnabled(cacheable=true)
    public static List<Knowledge__kav> getAllArticles(){
         return [SELECT Question__c,Title FROM Knowledge__kav];
    }    
}