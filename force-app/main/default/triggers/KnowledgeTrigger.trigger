trigger KnowledgeTrigger on Knowledge__kav (after insert) {
    //sendTo.add('admin@myorg.com');
    System.debug('KnowledgeTrigger is called with >>'+trigger.new);
    for(Knowledge__kav kn : trigger.new){

        /*Find all Knowledge__DataCategorySelection records where
ParentId Equals {!$Record.Id} (ka05j0000006XhiAAE)
Store the values of these fields in Knowledge_Category: Id*/
    //    for(Contact_Category__c qp : [Select Id,Name,(Select Id,Name From Products__r) From Knowledge__DataCategorySelection Where ParentId = kn.id]){
        //Messaging.SingleEmailMessage mail =  new Messaging.SingleEmailMessage();
        //mail.setToAddresses(sendTo);
        //mail.setSubject('Service Report Created for Record ID: '+ sr.ParentId);
        //String body = 'A service report was created.';
        //mail.setHtmlBody(body);
        //mails.add(mail);
    //}
    //Messaging.sendEmail(mails);
    }
}