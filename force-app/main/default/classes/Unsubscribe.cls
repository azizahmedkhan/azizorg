@RestResource(urlMapping='/unsubscribe/*')
global with sharing class Unsubscribe {    
@HttpPatch
        global static void unsubscribeFromTopic(String email, String topic) {
            List <Contact_Category__c> contatCategories = 
                [SELECT Categories__c, email__c FROM Contact_Category__c 
                 where Categories__c includes(:topic) AND email__c =:String.escapeSingleQuotes(email)];
            for(Contact_Category__c contactCategory : contatCategories) {
                    List<String> topics = contactCategory.Categories__c.split(';');
                    if(topics.contains(topic)){
                        topics.remove(topics.indexOf(topic));
                    }
                    contactCategory.Categories__c = String.join(topics,';');
               }
            update contatCategories;
        }
}