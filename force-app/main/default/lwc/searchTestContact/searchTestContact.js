import { LightningElement, track } from "lwc";
import getContactByName from "@salesforce/apex/ContactTestController.getContactByName";

export default class SearchTestContact extends LightningElement {
  @track
  contacts;
  key;
  handleChange(e) {
    this.key = e.target.value;
  }
  handleClick() {
    getContactByName({ key: this.key })
      .then((data) => {
        this.contacts = data;
      })
      .catch((err) => {
        console.log(err);
      });
  }
}
