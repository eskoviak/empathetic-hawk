public with sharing class AccountHandler {
    public AccountHandler() {

    }

    public static void insertAccount(Integer numNewAccts){
        List<Account> addAccounts = new List<Account>();
        Integer N = 1;
        while (N <= numNewAccts){
            Account acct = new Account();
            acct.Name = 'Acme Inc ' + N;
            acct.AccountNumber = 'A000' + N;
            addAccounts.add(acct);
            N = N + 1;
        }
        insert addAccounts;
    }
}
