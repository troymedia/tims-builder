package com.ecistm.tlpa.services
{
	import com.ecistm.tlpa.events.SearchResultEvent;

	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.AsyncToken;
	import mx.rpc.Responder;
	import mx.rpc.events.FaultEvent;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.HTTPService;
	
	import org.robotlegs.mvcs.Actor;
	
	public class LessonsService extends Actor
	{
		public var service:HTTPService;
		public var lesson:ArrayCollection;
		
		public function LessonsService()
		{
			super();
		}
		
		public function getResults():void
		{
			service = new HTTPService();
			service.url = 'data/lesson.xml';
			var responder:Responder = new Responder(onServiceResult, onServiceFault);
			var token:AsyncToken = service.send();
			token.addResponder(responder);
		}
		
		private function onServiceResult(e:ResultEvent):void
		{
			lesson = service.lastResult.lesson.questionPool.question;
			dispatch(new SearchResultEvent(SearchResultEvent.RECEIVED, lesson));
		}

		private function onServiceFault(e:FaultEvent):void
		{
			Alert.show(e.fault.faultDetail);
		}
	}
}