import { LightningElement , api } from 'lwc';

export default class SliderComponent extends LightningElement {
    @api value = 0;
     handleChange(event) {
        console.log(event.target.value);   
        this.value = event.target.value;     
    }
}