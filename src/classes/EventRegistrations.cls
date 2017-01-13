/**
 * See https://github.com/financialforcedev/fflib-apex-common for more info
 *
 * Install library via 
 *   https://githubsfdeploy.herokuapp.com/app/githubdeploy/financialforcedev/fflib-apex-common
 */

/**
 * Encapsulates all behaviour logic relating to the Event_Registration__c object
 * 
 * For more guidelines and details see 
 *   https://developer.salesforce.com/page/Apex_Enterprise_Patterns_-_Domain_Layer
 *
 **/
public class EventRegistrations extends fflib_SObjectDomain 
{
	public EventRegistrations(List<Event_Registration__c> records) 
	{
		super(records);	
	}

	public override void onValidate()
	{
		for(Event_Registration__c record : (List<Event_Registration__c>) Records)
		{
		}
	}

	public override void onValidate(Map<Id,SObject> existingRecords)
	{
		for(Event_Registration__c record : (List<Event_Registration__c>) Records)
		{
		}
	}

	public override void onBeforeInsert()
	{
		for(Event_Registration__c record : (List<Event_Registration__c>) Records)
		{
		}
	}

	public void someMethod()
	{
		for(Event_Registration__c record : (List<Event_Registration__c>) Records)
		{
		}		
	}

	public class Constructor implements fflib_SObjectDomain.IConstructable2
	{
		public fflib_SObjectDomain construct(List<SObject> sObjectList)
		{
			return new EventRegistrations(sObjectList);
		}

		public fflib_SObjectDomain construct(List<SObject> sObjectList, SObjectType sObjectType)
		{
			return new EventRegistrations(sObjectList);
		}			
	}	
}