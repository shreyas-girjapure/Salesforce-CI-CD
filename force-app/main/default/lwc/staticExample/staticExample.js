import { LightningElement } from "lwc";
import My_Resource from "@salesforce/resourceUrl/theRes";
import oh from "@salesforce/resourceUrl/ursus_park";
export default class StaticExample extends LightningElement {
  one = My_Resource + "/StaticRes/images/underImage.png";
  two = My_Resource + "/StaticRes/outsideImage.png";
  three = oh + "/img/standing-bear-silhouette.png";
}