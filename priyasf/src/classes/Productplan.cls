@RestResource (urlmapping ='/planupdate/*')
Global with sharing class Productplan {
    @HttpPost
    
    global static boolean productplanselect(string pname, string prodcode,String cterm, Boolean cabel, Double prodprice, Boolean internet,Boolean landline)
      {
        Product2 p = new Product2();
        p.name= pname;
        p.productcode = prodcode;
        p.Price__c =prodprice;
        p.Cabel__c= cabel;
       p.Contract_Term__c = cterm;
        p.Internet__c = internet;
        p.Landline__c  =landline;
          
          insert p;
          return true;
      }

    }