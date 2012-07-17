package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.ResponseAlert;
	import com.ecistm.tlpa.events.CorrectAnswerEvent;
	import com.ecistm.tlpa.events.SubmitEvent;
	
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ResponseAlertMediator extends Mediator
	{
		[Inject]
		public var view:ResponseAlert;
		public function ResponseAlertMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			eventMap.mapListener(view, CloseEvent.CLOSE, onClose, CloseEvent);
		}
		
		protected function onClose(e:CloseEvent):void
		{
			Alert.show('foo');
			//dispatch(new CorrectAnswerEvent(CorrectAnswerEvent.CORRECT, e.detail));
		}
	}
}