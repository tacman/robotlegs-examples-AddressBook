package org.robotlegs.examples.addressbook
{
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.examples.addressbook.controller.LoadContactsCommand;
	import org.robotlegs.examples.addressbook.controller.setup.ConfigureControllerCommand;
	import org.robotlegs.examples.addressbook.controller.setup.ConfigureModelCommand;
	import org.robotlegs.examples.addressbook.controller.setup.ConfigureServiceCommand;
	import org.robotlegs.examples.addressbook.controller.setup.ConfigureViewCommand;
	import org.robotlegs.mvcs.Context;

	public class AddressBookContext extends Context
	{
		override public function startup():void
		{
			commandMap.mapEvent(ContextEvent.STARTUP, ConfigureControllerCommand, ContextEvent, true);
			commandMap.mapEvent(ContextEvent.STARTUP, ConfigureServiceCommand, ContextEvent, true);
			commandMap.mapEvent(ContextEvent.STARTUP, ConfigureModelCommand, ContextEvent, true);
			commandMap.mapEvent(ContextEvent.STARTUP, ConfigureViewCommand, ContextEvent, true);
			
			commandMap.mapEvent(ContextEvent.STARTUP_COMPLETE, LoadContactsCommand, ContextEvent, true);
			
			dispatchEvent(new ContextEvent(ContextEvent.STARTUP));
			dispatchEvent(new ContextEvent(ContextEvent.STARTUP_COMPLETE));
		}
	}
}