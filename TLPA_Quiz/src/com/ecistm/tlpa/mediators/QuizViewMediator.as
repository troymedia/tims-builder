package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.services.LessonsService;
	import com.ecistm.tlpa.views.QuizView;
	
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
			//addContextListener(SearchResultEvent.RECEIVED, onSearchResultsReceived, SearchResultEvent);
//			addContextListener(ContextEvent.STARTUP_COMPLETE, onStartupComplete, ContextEvent);
			addViewListener(FlexEvent.CREATION_COMPLETE, onStartupComplete, FlexEvent);
		}
		
		protected function onStartupComplete(e:ContextEvent):void
		{
			onSearchResultsReceived();
		}
		
		protected function onSearchResultsReceived():void
		{
			service.getResults();
			Alert.show('all night');
		}
	}
}