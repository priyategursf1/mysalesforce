@RestResource(urlmapping='/Customer/*')
global with sharing class CustomerRest {
  @HttpPost
    
    global static boolean createCustomer(String cname,string CAddress,String cEmail,string Cphone)
    {
        Customer__c c = new Customer__c();
        c.CAddress__c = CAddress;
        c.Name= cname;
        c.cEmail__c = cEmail;
        c.Cphone__c =Cphone;
        insert c;
        return true;
    }
}