public class ContactSearch{
    public static List<Contact> searchForContacts(String lastName, String postalCode){
        List<Contact> contactList = [Select Id, Name from Contact where LastName Like :lastName or MailingPostalCode Like :postalCode];
        return contactList;
    }
}