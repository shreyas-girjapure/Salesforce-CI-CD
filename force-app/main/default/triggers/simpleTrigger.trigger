trigger simpleTrigger on Account (before insert , after insert,before update, after update,before delete , after delete,after undelete) {
    
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            SimpleTriggerHandler.getAllContactsOfAccount(Trigger.NewMap);
        }
    }    
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            
        }
    }    
}