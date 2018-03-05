@RestResource(urlMapping='/calculator/*')
global with sharing class calculator {
    @HttpPost
    global static integer add(integer a,integer b) {
        return a+b;
    }
}