package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.SubmitButton;
	import com.ecistm.tlpa.events.SubmitEvent;
	
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class SubmitButtonMediator extends Mediator
	{
		[Inject]
		public var view:SubmitButton;
		
		public function SubmitButtonMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			addViewListener(MouseEvent.CLICK, onClick, MouseEvent);
		}
		
		protected function onClick(e:MouseEvent):void
		{
			//view.alpha = .2;
			dispatch(new SubmitEvent(SubmitEvent.VALIDATE_ANSWERS));
		}
	}
}