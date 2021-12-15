import { LightningElement } from "lwc";

export default class SimpleCalulator extends LightningElement {
  num1;
  num2;
  result;
  handleChange(event) {
    console.log(event.target.name === "one");
    if (event.target.name === "one") {
      this.num1 = event.target.value;
    } else {
      this.num2 = event.target.value;
    }
  }
  addition() {
    this.result = parseInt(this.num1, 10) + parseInt(this.num2, 10);
    return this.result;
  }
  subtraction() {
    this.result = this.num1 - this.num2;
    return this.result;
  }
}