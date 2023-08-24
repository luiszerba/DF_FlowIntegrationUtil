global with sharing class WDC_DataObjectDataChgEventCommonParser {

    global static Object getValueFromPayload(List<FlowInput> input){

        if(input.isEmpty() || input.size() > 1) 
            throw new FlowException('This method allow only one input');

        FlowInput flowInput = input.get(0);
        
        Map<String,Object> payloadMap = (Map<String,Object>) JSON.deserializeUntyped(flowInput.jsonPayload);
        
        if(!payloadMap.containsKey(flowInput.key)){
            throw new FlowException('Key not found, the available keys are: '+ payloadMap.keySet().toString());
        }
        return payloadMap.get(flowInput.key);
    }

}