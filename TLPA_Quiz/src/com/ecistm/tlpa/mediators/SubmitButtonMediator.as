package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.SubmitButton;
	import com.ecistm.tlpa.events.AnswerSelectionEvent;
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
			addContextListener(AnswerSelectionEvent.ANSWER_SELECTED, onAnswerSelected, AnswerSelectionEvent);
			addContextListener(AnswerSelectionEvent.IMAGE_ANSWER_SELECTED, onAnswerSelected, AnswerSelectionEvent);
		}
		
		protected function onClick(e:MouseEvent):void
		{
			dispatch(new SubmitEvent(SubmitEvent.SUBMIT_ANSWERS, null, null, null));
			view.enabled = false;
		}
		
		protected function onAnswerSelected(e:AnswerSelectionEvent):void
		{
			view.enabled = true;
		}
	}
}