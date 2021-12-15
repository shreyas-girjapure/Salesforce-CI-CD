import { LightningElement, api, wire } from "lwc";
import findArticles from "@salesforce/apex/KnowledgeController.findArticles";

export default class SearchResult extends LightningElement {
  @api searchKey;
  articles;
  @wire(findArticles, { searchKey: "$searchKey" })
  wiredSearchResults({ error, data }) {
    if (data) {
      this.articles = data;
      console.log(this.searchKey);
      console.log(data);
    } else if (error) {
      console.log(this.searchKey);
      console.log(error.message);
    }
  }
}