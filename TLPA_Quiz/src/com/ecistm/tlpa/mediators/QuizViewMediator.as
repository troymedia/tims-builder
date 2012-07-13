package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.events.LaunchFeedbackEvent;
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.ResponseTextModel;
	import com.ecistm.tlpa.services.LessonsService;
	import com.ecistm.tlpa.views.QuizView_old;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.events.FlexEvent;
	import mx.managers.PopUpManager;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Mediator;
	
	public class QuizViewMediator extends Mediator
	{
		
		[Inject]
		public var view:QuizView_old;
		
		[Inject]
		public var responseModel:ResponseTextModel;
		
		[Inject]
		public var service:LessonsService;
		
		protected var alert:Alert;
		
		public function QuizViewMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			addViewListener(Event.ADDED_TO_STAGE, onStartupComplete, Event);
			addContextListener(SearchResultEvent.RECEIVED, onSearchResultsReceived, SearchResultEvent);
			addContextListener(SubmitEvent.NEXT_QUESTION, onAnswerSubmitted, SubmitEvent);
			addContextListener(SubmitEvent.CLOSE_FEEDBACK, closeFeedback, SubmitEvent);
		}
		
		protected function onStartupComplete(e:Event):void
		{
			service.getResults();
		}
		
		protected function onSearchResultsReceived(e:SearchResultEvent):void
		{
//			for each(var lesson:Object in e.results)
//				Alert.show(lesson.id);
			view.buildQuiz(e.results);
		}
		
		protected function onAnswerSubmitted(e:SubmitEvent):void
		{
			view.stepToNextQuestionPool(responseModel);
		}
		
		protected function closeFeedback(e:SubmitEvent):void
		{
			view.stepToNextQuestion();
		}
	}
}