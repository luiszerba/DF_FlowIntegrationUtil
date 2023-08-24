global with sharing class WDC_DataObjectDataChgEventStringParser {

    @InvocableMethod(label='Get Payload String Value using Key From DataObjectDataChgEvent' category='Workshop Data Cloud')
    global static List<String> getStringValueFromPayload(List<FlowInput> input){
        
        List<String> result = new List<String>();
        result.add((String)WDC_DataObjectDataChgEventCommonParser.getValueFromPayload(input));

        return result;
    }

}