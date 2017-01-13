public with sharing class ContactAndLeadSearch {
    public static List<List<sObject>> searchContactsAndLeads(String name){
    	List<List<sObject>> searchList = [FIND :name in ALL FIELDS Returning 
    										Contact(LastName, FirstName), Lead(LastName, FirstName)];
    	return searchList;
    }
}