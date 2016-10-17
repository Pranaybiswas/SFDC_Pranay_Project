@isTest

public class ExpenseTest {
 public testMethod static void myTest(){
      
        Expense__c expense = new Expense__c();                                                         //Test Object expense 
        expense.Amount__c=1000;                                                                       //Test value for Amount field
        expense.Name='party';                                                                         //Test value for Event Name field
        insert expense;                                                                              //Inserting the test object expense
        
                                                         
        Member__c member = new Member__c();                                                          //Test Object member 
        member.Name='abc';                                                                           //Test value for Name Field
        member.Email__c='abc@abc.com';                                                                //Test value for Email field
        insert member;                                                                               //Inserting the test object member
        
        
        Expensemember__c expmem = new Expensemember__c();                                            //Test Object expmem
        expmem.Member__c=member.Id;                                                                  //Test value for member field
        expmem.Expense__c=expense.Id;                                                                //Test value for expense field
        expmem.Contrib_amount__c=100;                                                                //Test value for Contribution amount field
        insert expmem;                                                                               //Inserting the test object expmem 
        
        Expensecls expExt = new Expensecls (new ApexPages.StandardController(expense));              //pdfprintpreview Test object
        
        List<Expensemember__c> ge = new List<Expensemember__c>();
        ge = expExt.getExpMembers();
}
}