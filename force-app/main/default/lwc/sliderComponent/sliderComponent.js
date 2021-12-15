import { LightningElement, api } from "lwc";

export default class SliderComponent extends LightningElement {
  @api value = 0;
  handleChange(event) {
    console.log(event.target.value);
    // eslint-disable-next-line @lwc/lwc/no-api-reassignments
    this.value = event.target.value;
  }
}