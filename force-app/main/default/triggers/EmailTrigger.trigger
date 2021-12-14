trigger EmailTrigger on EmailMessage (before insert) {
    System.debug('hello world');
}