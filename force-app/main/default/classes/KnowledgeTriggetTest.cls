@isTest
public class KnowledgeTriggetTest {

    @isTest() 
    static void testSendEmailToKnowledgeCategorySubscrubers () {
        //create knowledge_kv
        Knowledge__kav knowledge = new knowledge__kav(Title='test',summary='xyz',urlname='xyz');
        Blogs
        knowledge.ArticleBody__c = 'Test Article Body';
        //add category
        Test.startTest();
        Database.SaveResult result = Database.insert(knowledge, false);
        //knowledge.PublishStatus='Online';
        Test.stopTest();
        System.assert(result.isSuccess());
        //System.assert( check if email is sent);
    }
}