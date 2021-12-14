trigger OpportunityTrigger on Opportunity (before insert,after insert,before update,after update,before delete,after delete,after undelete) {
    if(Trigger.isBefore){
        if(Trigger.isInsert){
           OpportunityTriggerHandler.isOwnerOnRelatedAccountTeam(Trigger.New);            
        }
        if(Trigger.isUpdate){
            OpportunityTriggerHandler.isOwnerOnRelatedAccountTeam(Trigger.New);
            
        }
    }
    
}