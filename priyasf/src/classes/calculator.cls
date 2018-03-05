@RestResource(urlMapping='/calculator/*')
global with sharing class calculator {
    @HttpPost
    global static integer add(integer a,integer b) {
    	
        system.debug('the length of my name:' + datetime.now().time());   
        return a+b;
    }
}