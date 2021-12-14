public class OpportunityTriggerHandler {

    
    public static void isOwnerOnRelatedAccountTeam(List<Opportunity> oppList){
        Map<Opportunity,AccountTeamMember> finalMap = new Map<Opportunity,AccountTeamMember>();
        Set<Id> accountIds = new Set<id>();
        
        for(Opportunity opp : oppList){            
            accountIds.add(opp.AccountId);
        }      
        
        Map<Id,List<AccountTeamMember>> accountToTeamMembers = new Map<Id,List<AccountTeamMember>>();
        
        List<AccountTeamMember> teamMemberList = [Select userid , accountId from AccountTeamMember where accountId IN:accountIds ];
        
        if(teamMemberList.size()!=0 || !teamMemberList.isEmpty()){                    
            for(AccountTeamMember atm : teamMemberList){
                if(!accountToTeamMembers.containsKey(atm.accountId)){
                    List<AccountTeamMember> tempList = new List<AccountTeamMember>();
                    tempList.add(atm);
                    accountToTeamMembers.put(atm.accountId,tempList);
                }else{
                    List<AccountTeamMember> tempList = accountToTeamMembers.get(atm.accountId);
                    tempList.add(atm);
                    accountToTeamMembers.put(atm.accountId,tempList);
                }           
            }                                    
            for(Opportunity opp : oppList){
                List<AccountTeamMember> atmList = accountToTeamMembers.get(opp.AccountId);
                
                for(AccountTeamMember atm : atmList){
                    if(atm.userId==opp.OwnerId){
                        finalMap.put(opp, atm);
						opp.addError('Error');                      
                    }
                }            
            }
        }
        System.debug(finalMap);        
    }
    
    
    /*2.Write a bulkified trigger on opportunity to restrict the user to change the stagename to 'closed won'. 
    if there is no 'OpportunityContactRole' exists for that opportunity of type role ='Decision Maker'*/
    
	    
    public void closedWonBasedOnRole(Map<Id,Opportunity> newOpps,Map<Id,Opportunity>oldOpps){
		//List<Opportunity> oppList = [Select id,Name,(Select role from OpportunityContactRole) from opportunity];
    }
}