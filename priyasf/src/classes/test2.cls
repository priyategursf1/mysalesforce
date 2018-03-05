public class test2 {
    Integer msem =5;
    string mcol;
    string MBDAY;
    
    
    public test2(){
        mcol = 'NITK';
        MBDAY='7thmarch';
        
    }

    public void display(){
        
        system.debug('MY BDAY IS ON:'+MBDAY);
        system.debug('my college is:'+mcol);
        system.debug('I am in sem:'+msem);
    }
}