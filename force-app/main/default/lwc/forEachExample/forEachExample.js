import { LightningElement } from 'lwc';

export default class ForEachExample extends LightningElement {
    isFor = false;
    contacts =[
        {
            id : 1,
            firstName : "shreyas",
            lastName : "Girjapure"
        },
        {
            id : 2,
            firstName : "Avibash",
            lastName : "Rathod"
        },
        {
            id : 3,
            firstName : "Sanjog",
            lastName : "Majarkhede"
        },
        {
            id : 4,
            firstName : "Saurabh",
            lastName : "dukre"
        }
    ]
    changeValue(){
        this.isFor = !this.isFor;
    }
}