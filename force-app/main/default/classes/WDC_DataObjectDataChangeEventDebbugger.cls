global with sharing class WDC_DataObjectDataChangeEventDebbugger {

    @InvocableMethod(label='Parser Data Object Data Change Event' category='Workshop Data Cloud')
    global static void getDetailsFromCLTVEvent(List<DataObjectDataChgEvent> payloadList){
		
		List<Log__c> toInsert = new List<Log__c>();
        System.debug('[payloadList#size]'+payloadList.size());
        for(DataObjectDataChgEvent payload: payloadList){
            //System.debug('[Payload]:'+payload.PayloadCurrentValue);
            //System.debug('[WDC_DataObjectDataChangeEventParser#getDetailsFromCLTVEvent]'
            //    + JSON.serialize(payload));
            toInsert.add(new Log__c(payload__c = payload.PayloadCurrentValue));
        }
        insert toInsert;
    }
}