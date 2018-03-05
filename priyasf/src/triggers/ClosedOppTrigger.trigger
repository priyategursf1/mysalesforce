// Trigger triggerName on ObjectName( action insert/update/delete)
trigger ClosedOppTrigger on Opportunity (after update) {
	List<ClosedOpp__c> closedOppNewInserts = new List<ClosedOpp__c>();
    // Trigger.new = list of new updated records
	for (Integer i = 0; i < Trigger.new.size(); i++)    {
	    if (Trigger.new[i].StageName != Trigger.old[i].StageName && Trigger.new[i].StageName == 'Closed Won') {
		 	  ClosedOpp__c individualClosedOppRecord = new ClosedOpp__c (customerName__c = Trigger.new[i].name ,
                                                                       Opportunity_LookUp__c= Trigger.new[i] .id);
			// add individualClosedOppRecord to the ClosedOpp__c list
            closedOppNewInserts.add(individualClosedOppRecord );
            system.debug('inserting new record');
		}
        
	}
    // insert individual object ClosedOpp__c or List of ClosedOpp__c
    insert closedOppNewInserts  ;
}