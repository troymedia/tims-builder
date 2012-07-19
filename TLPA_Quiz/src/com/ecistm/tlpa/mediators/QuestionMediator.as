package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.events.AnswerSelectionEvent;
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.views.Question;
	
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	import mx.events.ItemClickEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class QuestionMediator extends Mediator
	{
		[Inject]
		public var view:Question;
		
		public function QuestionMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
//			eventMap.mapListener(view.questionPool, ItemClickEvent.ITEM_CLICK, onItemClick, ItemClickEvent);
//			eventMap.mapListener(view.cb, MouseEvent.CLICK, onClick, MouseEvent);
			addContextListener(AnswerSelectionEvent.CORRECT_ANSWER, onCorrectAnswer, AnswerSelectionEvent);
			addContextListener(AnswerSelectionEvent.IMAGE_ANSWER_SELECTED, onImageAnswerSelected, AnswerSelectionEvent);
			addContextListener(SubmitEvent.REGISTER_ANSWERS, onRegisterAnswers, SubmitEvent);
		}
		
		protected function onItemClick(e:ItemClickEvent):void
		{
//			view.registeredAnswer = view.questionPool.selectedValue as String;
			view.registerSelection();
//			dispatch(new SubmitEvent(SubmitEvent.REGISTER_ANSWERS, view.type, e.currentTarget.selection, view));//convert to function that retrieves necessary data
//			dispatch(new AnswerSelectionEvent(AnswerSelectionEvent.ANSWER_SELECTED));
////			Alert.show(view.registeredAnswer);
		}
		
		protected function onClick(e:MouseEvent):void
		{
			Alert.show('..');
		}
		
		protected function onImageAnswerSelected(e:AnswerSelectionEvent):void
		{
			view.setImageAnswerSelection(e.imageAnswer);
		}
		
		protected function onSubmit(e:SubmitEvent):void
		{
			//Alert.show(e.type);
		}
		
		protected function onCorrectAnswer(e:AnswerSelectionEvent):void
		{
			view.playCorrectAudio(e.selection);
		}
		
		protected function onRegisterAnswers(e:SubmitEvent):void
		{
			view.setAnswerSelection(e.answer);
		}
		
	}
}