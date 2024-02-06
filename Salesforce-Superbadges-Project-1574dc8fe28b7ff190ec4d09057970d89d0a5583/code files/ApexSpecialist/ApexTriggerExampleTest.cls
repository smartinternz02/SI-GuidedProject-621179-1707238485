@isTest
private class ApexTriggerExampleTest {
    @isTest static void testTriggerFunctionality() {
        Account acc = new Account(Name='Test Account');
        insert acc;
        
        // Verify trigger functionality
        acc = [SELECT Id, Description FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Trigger updated description', acc.Description);
    }
}
