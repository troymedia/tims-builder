package com.ecistm.tlpa.mediators
{
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Mediator;
	import com.ecistm.tlpa.components.SmartCheckboxGroup;
	
	public class SmartCheckboxGroupMediator extends Mediator
	{
		[Inject]
		public var view:SmartCheckboxGroup;
		
		public function SmartCheckboxGroupMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.cb, MouseEvent.CLICK, onClick, MouseEvent);
		}
		
		protected function onClick(e:MouseEvent):void
		{
			Alert.show(e.currentTarget.label);
		}
	}
}