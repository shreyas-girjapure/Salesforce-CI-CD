import { LightningElement, api} from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class App extends NavigationMixin(LightningElement) {   
   unsubscribe(){
    this.dispatchEvent(new CustomEvent('unsubscribe'));
   }
   navigateToPage() {   
        this.dispatchEvent(new CustomEvent('preferences'));     
        this[NavigationMixin.Navigate]({
            type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Account',
                actionName: 'home',
            },
        });
    }
}