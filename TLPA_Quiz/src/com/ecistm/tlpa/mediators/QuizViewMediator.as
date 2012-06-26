package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.QuizView;
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.services.LessonsService;
	
	import mx.controls.Alert;
	
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
			addContextListener(SearchResultEvent.RECEIVED, onSearchResultsReceived, SearchResultEvent);
		}
		
		protected function onSearchResultsReceived(e:SearchResultEvent):void
		{
			service.getResults();
			Alert.show('all night');
		}
	}
}