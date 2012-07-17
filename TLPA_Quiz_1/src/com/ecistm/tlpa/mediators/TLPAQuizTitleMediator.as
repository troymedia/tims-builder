package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.TLPAQuizTitle;
	import com.ecistm.tlpa.events.SearchResultEvent;
	
	import mx.controls.Alert;
	
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
			addContextListener(SearchResultEvent.RECEIVED, initializeTitleText, SearchResultEvent);
		}
		
		protected function initializeTitleText(e:SearchResultEvent):void
		{
			Alert.show('tour');
			view.text = '...'; 
		}
			
	}
}