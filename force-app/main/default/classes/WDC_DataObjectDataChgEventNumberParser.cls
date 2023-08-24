global with sharing class WDC_DataObjectDataChgEventNumberParser {
    

    @InvocableMethod(label='Get Payload String Value using Key From DataObjectDataChgEvent' category='Workshop Data Cloud')
    global static List<Decimal> getNumberValueFromPayload(List<FlowInput> input){

        List<Decimal> result = new List<Decimal>();
        result.add((Decimal)WDC_DataObjectDataChgEventCommonParser.getValueFromPayload(input));

        return result;
    }
}