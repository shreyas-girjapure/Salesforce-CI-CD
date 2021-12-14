import { LightningElement, api, track} from 'lwc';

export default class DecoratorExample extends LightningElement {
   @track value = {
        firstName : '',
        lastName : ''
    };
    message ='helloworld';
    changeVal(event){
        this.message = event.target.value;
    }
    get msgValue(){
        return this.message;
    }
    changeHandler(event){
        if(event.target.label=="firstName"){
            this.value.firstName = event.target.value;
        }else{
            this.value.lastName = event.target.value;
        }       
       console.log(`the value if first name is ${this.value.firstName} and the last name is ${this.value.lastName}`);       
    }       
    get firstName(){
       return this.value.firstName;
    }
    get lastName(){
        return this.value.lastName;
    }   
}