package org.robotlegs.examples.addressbook.view
{
	import org.robotlegs.examples.addressbook.events.ContactEvent;
	import org.robotlegs.examples.addressbook.model.ContactsModel;
	import org.robotlegs.examples.addressbook.model.events.ContactsModelEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ContactsToolbarViewMediator extends Mediator
	{
		[Inject]
		public var view:ContactsToolbarView;
		
		[Inject]
		public var model:ContactsModel;
		
		override public function onRegister():void
		{
			eventMap.mapListener(view, ContactEvent.CREATE, dispatch);
		}
	}
}