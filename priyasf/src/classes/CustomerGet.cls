@RestResource (urlmapping='/CustomerEamil/*')
global with sharing  class CustomerGet {
@HttpGet
global static list<string> getEmail(){
	list<String> elist = new list<String>();
	list<Customer__c> clist= [select name,cEmail__c from Customer__c where cEmail__C like '%gmail.com' ];
    for(Customer__c currentRecord:clist)
	{
		
		
       string currentRecordEmailId= currentRecord.cemail__c;
        elist.add(currentRecordEmailId);
	}
   return elist; 
}

}