import { LightningElement, wire } from "lwc";
import { getRecord } from "lightning/uiRecordApi";

export default class MetaExample extends LightningElement {
  @wire(getRecord, {
    recordId: "m002x000000k1uVAAQ",
    fields: ["zang__mdt.MasterLabel", "zang__mdt.DeveloperName"]
  })
  data;
  runthis() {
    // eslint-disable-next-line no-undef
    console.log(data.data);
  }
}
