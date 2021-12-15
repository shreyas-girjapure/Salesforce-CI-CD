import { LightningElement, wire } from "lwc";
import getPaginatedObjects from "@salesforce/apex/Pagination.getPaginatedObjects";

export default class Pagination extends LightningElement {
  contacts;
  error;
  sobjectApiName = "Contact";
  commaSeperatedfields = "FirstName , Title";
  limitValue = 5;
  offsetValue = 5;

  @wire(getPaginatedObjects, {
    sobjectApiName: "$sobjectApiName",
    commaSeperatedfields: "$commaSeperatedfields",
    limitValue: "$limitValue",
    offsetValue: "$offsetValue"
  })
  wiredObjects({ error, data }) {
    if (data) {
      console.log("hello data ");
      this.contacts = data;
      console.log("contacts are ");
      console.log(this.contacts);
      this.error = undefined;
    } else if (error) {
      console.log("hello error");
      this.error = error;
      console.log(error.message);
      this.contacts = undefined;
    }
  }
}
