import { LightningElement } from "lwc";

export default class ReasonElement extends LightningElement {
  handleSubmit() {
    console.log("this ran");
    this.dispatchEvent(new CustomEvent("ssubmit"));
  }
}
