package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.SmartCheckbox;
	import com.ecistm.tlpa.events.AnswerSelectionEvent;
	import com.ecistm.tlpa.events.SubmitEvent;
	
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Mediator;
	
	
	public class CheckboxMediator extends Mediator
	{
		[Inject]
		public var view:SmartCheckbox;
		public function CheckboxMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			addViewListener(MouseEvent.CLICK, onClick, MouseEvent);
		}
		
		protected function onClick(e:MouseEvent):void
		{
			view.registeredAnswer = view.questionLabel;
			dispatch(new SubmitEvent(SubmitEvent.REGISTER_ANSWERS, view.questionType, view.questionLabel, view, null, view.cb.selected));
			dispatch(new AnswerSelectionEvent(AnswerSelectionEvent.ANSWER_SELECTED, String(view.cb.selected)));
		}
	}
}