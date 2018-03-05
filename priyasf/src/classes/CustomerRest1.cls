@RestResource (urlmapping='/Customer1/*')


global with sharing class CustomerRest1 {
   @HttpPost
    global static boolean createDOB(String cname,Date cdob)
    {
        Customer__c c = new Customer__c();
        c.Name=cname;
        c.DOB__C = cdob;
        insert c;
        return true;
    }

}