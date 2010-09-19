package org.robotlegs.examples.addressbook.controller.setup
{
	import com.probertson.data.SQLRunner;
	
	import flash.filesystem.File;
	
	import org.robotlegs.examples.addressbook.service.IContactService;
	import org.robotlegs.examples.addressbook.service.SQLContactService;
	import org.robotlegs.examples.addressbook.service.XMLContactService;
	import org.robotlegs.examples.addressbook.service.helpers.DatabaseCreator;
	import org.robotlegs.mvcs.Command;
	
	public class ConfigureServiceCommand extends Command
	{
		private static const DB_FILE_NAME:String = "AddressBook.db";
		
		override public function execute():void
		{
			configureSQLService();
		}
        
        protected function configureXMLService():void
        {
            injector.mapSingletonOf(IContactService, XMLContactService);
        }
        
        protected function configureSQLService():void
        {
            var dbFile:File = File.applicationStorageDirectory.resolvePath(DB_FILE_NAME);
            var sqlRunner:SQLRunner = new SQLRunner(dbFile);
            
            injector.mapValue(SQLRunner, sqlRunner);
            injector.mapSingletonOf(IContactService, SQLContactService);
            
            if (!dbFile.exists)
			{
				var creator:DatabaseCreator = injector.instantiate(DatabaseCreator);
				creator.createDatabaseStructure();
			}
        }
	}
}