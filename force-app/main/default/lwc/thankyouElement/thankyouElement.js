import { LightningElement } from "lwc";
import { NavigationMixin } from "lightning/navigation";

export default class ThankyouElement extends NavigationMixin(LightningElement) {
  navigateToPage() {
    this[NavigationMixin.Navigate]({
      type: "standard__objectPage",
      attributes: {
        objectApiName: "Account",
        actionName: "home"
      }
    });
  }
}