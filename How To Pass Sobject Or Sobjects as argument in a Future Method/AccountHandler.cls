public class AccountHandler {

  @future
  public static void makeFutureCallOut(String fetchedAcc){
    system.debug('Fetched Account::: '+fetchedAcc);
    AccountWrapper wrapAcc = (AccountWrapper) JSON.deserialize(fetchedAcc, AccountWrapper.class);
    system.debug('Deserialized Account record in future: '+wrapAcc.name);
  }

  public static void fetchAccount() {
    Account acc = [Select Id, Name FROM Account WHERE Name = 'Musk Corporation'];
    makeFutureCallOut(JSON.serialize(acc));
  }

  public class AccountWrapper {
    public String name {set; get;}
    public String industry {set; get;}
    public String street {set; get;}
    public String city {set; get;}

    public accountWrapper(String name, String industry, String street, String city) {
      name = name;
      industry = industry;
      street = street;
      city = city;
  }  
}
