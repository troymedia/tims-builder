package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.TLPAQuizTitle;
	import com.ecistm.tlpa.events.SearchResultEvent;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class TLPAQuizTitleMediator extends Mediator
	{
		[Inject]
		public var view:TLPAQuizTitle;
		
		public function TLPAQuizTitleMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			addContextListener(SearchResultEvent.RECEIVED, onSearchResultsReceived, SearchResultEvent);
		}
		
		protected function onSearchResultsReceived(e:SearchResultEvent):void
		{
			view.text = e.results.id + ': Quiz '; 
		}
			
	}
}