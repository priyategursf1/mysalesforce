@RestResource(urlMapping='/AddLead/*')
global with sharing class AddLead {
    @HttpPost
    global static boolean leads(String name,String lastname1,String company,String newStatus) {
        Lead l=new Lead();
        l.FirstName=name;
        l.LastName=lastname1;
        l.company=company;
        l.Status='Working - Contacted';
        insert l;
        
        system.debug('the length of my name:' + datetime.now().time());   
        system.debug('the length of my name:' + datetime.now().time());   
        
        /*
                 {
                  "name":"pri2",
                   "lastname1":"t2",
                   "company":"sff2",
                    "newStatus":"open"
                }
		*/
    }
}