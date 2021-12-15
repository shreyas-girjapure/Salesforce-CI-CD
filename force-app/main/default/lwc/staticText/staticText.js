import { LightningElement } from "lwc";
import myResource from "@salesforce/resourceUrl/res";

export default class StaticText extends LightningElement {
  data;
  runthis() {
    this.data = myResource;
    console.log(this.data);
  }
}