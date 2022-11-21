public with sharing class PropertyUtility {
    public PropertyUtility() {

    }

    public static void newListedProperties() {
        List<Property__c> newPropList = [
            SELECT  Name, Broker__r.Email__c, Days_On_Market__c
            FROM Property__c
            WHERE Days_On_Market__c < 31
        ];
        String propEmail = '';
        for ( Property__c item : newPropList) {
            propEmail += 'address: '+item.NAME+ ' : ' + item.BROKER__R.EMAIL__C + '\n';
        }
        System.debug(propEmail);
    }
}
