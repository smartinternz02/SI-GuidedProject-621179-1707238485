trigger ApexTriggerExample on Account (before insert) {
    for(Account acc : Trigger.new) {
        acc.Description = 'Trigger updated description';
    }
}
