package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.events.SearchResultEvent;
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
		}
		
		protected function onStartupComplete(e:Event):void
		{
			service.getResults();
		}
		
		protected function onSearchResultsReceived(e:SearchResultEvent):void
		{
			view.buildQuiz(e.results);
		}
	}
}