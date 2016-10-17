public with sharing class Expensecls {
    public Expense__c expobj{get;set;}
    public List<Expensemember__c> memExp{get;set;}                         //List of Expense Member Object

    public Expensecls(ApexPages.StandardController controller) {
        expobj = (Expense__c)controller.getRecord();
        memExp = getExpMembers();
    }
    
    public List<Expensemember__c> getExpMembers(){
        return [Select Contrib_amount__c,Member__r.Name from Expensemember__c where Expense__c =: expobj.Id];
    }
}