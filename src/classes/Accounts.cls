/**
 * See https://github.com/financialforcedev/fflib-apex-common for more info
 *
 * Install library via 
 *   https://githubsfdeploy.herokuapp.com/app/githubdeploy/financialforcedev/fflib-apex-common
 */

/**
 * Encapsulates all behaviour logic relating to the Account object
 * 
 * For more guidelines and details see 
 *   https://developer.salesforce.com/page/Apex_Enterprise_Patterns_-_Domain_Layer
 *
 **/
public class Accounts extends fflib_SObjectDomain 
{
	//Test the branching from branch to master
	public Accounts(List<Account> records) 
	{
		super(records);	
	}

	public override void onValidate()
	{
		for(Account record : (List<Account>) Records)
		{
		}
	}

	public override void onValidate(Map<Id,SObject> existingRecords)
	{
		for(Account record : (List<Account>) Records)
		{
		}
	}

	public override void onBeforeInsert()
	{
		for(Account record : (List<Account>) Records)
		{
		}
	}

	public override void onBeforeUpdate(Map<Id,SObject> existingRecords)
	{
		updateAnnualRevenue(existingRecords);
	}

	public void updateAnnualRevenue(Map<Id,SObject> existingRecords)
	{
		for(Account record : (List<Account>) Records)
		{
			Account oldVal = (Account)existingRecords.get(record.Id);
			String descOldVal = oldval.Description;
			record.AnnualRevenue = (record.Description).getLevenshteinDistance(descOldVal);
		}		
	}

	public override void onApplyDefaults(){
		for(Account acc : (List<Account>) Records){
			acc.Description = 'Domain classes rock!';
		}
	}

	public class Constructor implements fflib_SObjectDomain.IConstructable2
	{
		public fflib_SObjectDomain construct(List<SObject> sObjectList)
		{
			return new Accounts(sObjectList);
		}

		public fflib_SObjectDomain construct(List<SObject> sObjectList, SObjectType sObjectType)
		{
			return new Accounts(sObjectList);
		}			
	}	
}