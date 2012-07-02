package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.services.LessonsService;
	import com.ecistm.tlpa.views.QuizView;
	
	import flash.events.Event;
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
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
			{
				Alert.okLabel = "Next Question";
				Alert.show('You did not select the correct response.', 'Incorrect', Alert.OK, null, function(e:CloseEvent):void{ 
					view.stepToNextQuestion() 
				});
			}
			else if(e.questionType == 'true')
			{
				Alert.okLabel = 'Continue';
				Alert.cancelLabel = 'Retry Quiz';
				Alert.show("That'\'s right! You have selected the correct response.", 'Correct', Alert.OK|Alert.CANCEL, null, function(e:CloseEvent):void{ 
					if(e.detail == Alert.OK)
						view.stepToNextQuestionPool();
					if(e.detail == Alert.CANCEL)
						view.resetQuiz();
				});
			}
		}
	}
}