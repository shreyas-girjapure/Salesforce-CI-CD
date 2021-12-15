import { LightningElement, api } from "lwc";
import { NavigationMixin } from "lightning/navigation";

export default class TaskElement2 extends NavigationMixin(LightningElement) {
  @api prop;
  exe() {
    console.log(this.prop);
  }
}