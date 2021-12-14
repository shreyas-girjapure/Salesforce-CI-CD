import { LightningElement } from "lwc";

export default class MainComponent extends LightningElement {
  task = true;
  reason = false;
  thankyou = false;

  logAll() {
    console.log("values of all elements are ");
    console.log(
      `the task is ${this.task} the reason is ${this.reason} and the thank is ${this.thankyou}`
    );
  }

  handleUnsub() {
    this.reason = true;
    this.task = false;
    console.log("this is unsub event eevent");
    this.logAll();
  }

  handleReason() {
    this.reason = false;
    this.thankyou = true;
    this.task = false;
    console.log("this is reason eevent");
    this.logAll();
  }
}