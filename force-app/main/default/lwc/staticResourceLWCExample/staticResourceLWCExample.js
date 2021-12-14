import { LightningElement } from 'lwc';
import My_Resource from '@salesforce/resourceUrl/myResource';
export default class StaticResourceLWCExample extends LightningElement {    
    summer20Logo = My_Resource + '/images/salesfoce-summer-2020.jpg';
}