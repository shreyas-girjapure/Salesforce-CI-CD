import { LightningElement, wire ,api } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';

export default class MetaExample extends LightningElement {
 
    @wire(getRecord, { recordId: 'm002x000000k1uVAAQ', fields: ['zang__mdt.MasterLabel','zang__mdt.DeveloperName'], optionalFields: [PHONE_FIELD, OWNER_NAME_FIELD] })
    data;
    runthis(){
        console.log(data.data);
    }
}