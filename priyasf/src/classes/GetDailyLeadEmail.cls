@RestResource(urlMapping='/LeadEmails/*')
global with sharing class GetDailyLeadEmail {
    @HttpGet
    global static List<String> getRecord() {
        List<String> emailList=new List<String>();
        List<Lead> Leadlist = [select email from lead where createddate =Today];
      	for(Lead a: Leadlist)
        {
            if(a.Email!=null)
            	emailList.add(a.Email);
        }
        return emailList;
    }
}