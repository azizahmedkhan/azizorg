@isTest(SeeAllData=false)
public class UnsubscribeTest {
    
    @isTest
    static void testPatchUnsubscribe() {
        RestRequest req = new RestRequest();
        RestResponse res = new RestResponse();
        req.requestURI = '/services/apexrest/unsubscribe';
        req.httpMethod = 'PATCH';
        String contactEmail = 'aa@test.com';
        String topic = 'Business';
        //req.addParameter('customerId', 'AzizId');
        RestContext.request = req;
        RestContext.response = res;
        generateMockData();
        Test.startTest();
        Unsubscribe.unsubscribeFromTopic(contactEmail, topic);
        Test.stopTest();
        Contact_Category__c contactCategory = [SELECT Categories__c, email__c FROM Contact_Category__c where email__c=:contactEmail];
        System.assert(!contactCategory.Categories__c.split(';').contains(topic));
    }
    
    public static void generateMockData() {
        Contact_Category__c contactCategory = new Contact_Category__c();
        contactCategory.Categories__c = 'Volunteer;Tech;Business;Environment';
        contactCategory.email__c = 'aa@test.com';
        insert contactCategory;
    }
}