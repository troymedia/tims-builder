package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.services.LessonsService;
	import com.ecistm.tlpa.views.QuizView;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	import mx.events.FlexEvent;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Mediator;
	
	public class QuizViewMediator extends Mediator
	{
		
		[Inject]
		public var view:QuizView;
		
		[Inject]
		public var service:LessonsService;
		
		public function QuizViewMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			addViewListener(Event.ADDED_TO_STAGE, onStartupComplete, Event);
			addContextListener(SearchResultEvent.RECEIVED, onSearchResultsReceived, SearchResultEvent);
			addContextListener(SubmitEvent.ANSWER_SUBMITTED, onAnswerSubmitted, SubmitEvent);
		}
		
		protected function onStartupComplete(e:Event):void
		{
			service.getResults();
		}
		
		protected function onSearchResultsReceived(e:SearchResultEvent):void
		{
			view.buildQuiz(e.results);
		}
		
		protected function onAnswerSubmitted(e:SubmitEvent):void
		{
			if(e.questionType == 'false')
				Alert.show('You did not select the correct response.', 'Incorrect', Alert.OK, null, function():void{ view.stepToNextQuestion() });
			else if(e.questionType == 'true')
				Alert.show("That'\'s right! You have selected the correct response.", 'Correct', Alert.OK|Alert.CANCEL, null, function():void{ view.stepToNextQuestion() });
			else if(e.questionType == null)
				Alert.show('You must complete the question before submitting.', 'Invalid Answer', Alert.OK, null);
		}
	}
}