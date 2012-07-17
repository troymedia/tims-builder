package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.events.SubmitEvent;
	
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class FeedbackDialogBoxMediator extends Mediator
	{
		[Inject]
		public var view:FeedbackDialogBox;
		
		public function FeedbackDialogBoxMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(view.okButton, MouseEvent.CLICK, okButtonHandler, MouseEvent);
			eventMap.mapListener(view.cancelButton, MouseEvent.CLICK, cancelButtonHandler, MouseEvent);
		}
		
		protected function okButtonHandler(e:MouseEvent):void
		{
			dispatch(new SubmitEvent(SubmitEvent.CLOSE_FEEDBACK));
			view.close();
		}
		
		protected function cancelButtonHandler(e:MouseEvent):void
		{
			
		}
	}
}