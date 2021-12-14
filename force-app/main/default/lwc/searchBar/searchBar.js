import { LightningElement ,api} from 'lwc';
import { NavigationMixin } from 'lightning/navigation';

export default class SearchBar extends NavigationMixin(LightningElement) {
    @api searchPlaceholder = "Search...";

    handleKeyUp(evt) {
        const isEnterKey = evt.keyCode === 13;
        if (isEnterKey) {
            const queryTerm = evt.target.value;
            this.navigateToSearch(queryTerm);
        }
    }
    navigateToSearch(queryTerm){        
        this[NavigationMixin.Navigate]({
            type: 'standard__search',
            attributes: {},
            state: {
                term: queryTerm
            }
        });
    }

}