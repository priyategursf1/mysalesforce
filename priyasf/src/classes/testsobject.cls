public class testsobject {
    
    public void display()
    {
       // sObject s;
       //     s=new lead();
       // l.LastName = 'SARAPURE';
        //l.Company = 'Vizient';
       // L.Status='open';
       // insert l;
       // system.debug('My std object name is:'+s.getsObjecttype());
      ClosedOpp__c c  = new ClosedOpp__c();
        for(integer i=0;i<10;i++) 
        //ClosedOpp__c c  = new ClosedOpp__c();
        c.Name='aaa1234';
        c.customerName__c ='jeevan';
         
       // system.debug('My std object name is:'+c.getsObjectType());
           insert c; 
        }
        
    }