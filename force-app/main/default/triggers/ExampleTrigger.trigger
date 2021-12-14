trigger ExampleTrigger on Contact (after insert, after delete) {
    if(Trigger.isInsert){
        Integer recordCount = Trigger.new.size();
        EmailManager.sendMail('shreyasgirjapure1122@gmail.com', 'Trailhead Trigger Tutorial', 
                    recordCount + ' contact(s) were inserted.');
    }
    if(Trigger.isDelete){
        
    }
}