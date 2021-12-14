public with sharing class Pagination {
    
    public Pagination() {
    }

    public static List<SObject> getAllObjects(){        
        List<SObject> objects = [SELECT FirstName,Title FROM Contact];
        return objects;
    }

    @AuraEnabled(cacheable=true)
    public static List<Sobject> getPaginatedObjects(String sobjectApiName,String commaSeperatedfields,Integer limitValue,Integer offsetValue){ 
        String query = 'Select ';                            
        query = query + commaSeperatedfields + ' from ' + sobjectApiName + ' limit ' +limitValue + ' offset '+ offsetValue;
        System.debug(query);
        List<Sobject> objects = Database.query(query);
        return objects;
    }

}