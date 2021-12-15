import { api, LightningElement } from "lwc";

import NAME_FIELD from "@salesforce/schema/Contact.Name";

console.log("thename", NAME_FIELD);
export default class SimpleContactTile extends LightningElement {
  @api
  recordId;

  @api
  objectApiName;

  fields = [NAME_FIELD];
}