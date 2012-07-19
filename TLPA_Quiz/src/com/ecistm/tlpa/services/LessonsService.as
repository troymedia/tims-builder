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
		public var lesson:Object;
		public var numberOfLessons:int;
		
		public function LessonsService()
		{
			super();
		}
		
		public function getResults():void
		{
			service = new HTTPService();
			
			/********** test urls **********/ 
//			service.url = 'com/ecistm/tlpa/data/test/tlpa-c9_test.xml';
//			service.url = 'com/ecistm/tlpa/data/test/tlpa01-lesson1-quiz_test.xml';//Course 1, Lesson 1
			service.url = 'com/ecistm/tlpa/data/test/tlpa01-lesson2-quiz_test.xml';//Course 1, Lesson 2
//			service.url = 'com/ecistm/tlpa/data/test/tlpa01-lesson3-quiz_test.xml';//Course 1, Lesson 3
//			service.url = 'com/ecistm/tlpa/data/test/tlpa01-lesson4-quiz_test.xml';//Course 1, Lesson 4
			/********** end of  **********/
			
			//service.url = 'com/ecistm/tlpa/data/tlpa-c9.xml';//Course 9
//			service.url = 'com/ecistm/tlpa/data/tlpa01-lesson1-quiz.xml';//Course 1, Lesson 1
//			service.url = 'com/ecistm/tlpa/data/tlpa01-lesson2-quiz.xml';//Course 1, Lesson 2
//			service.url = 'com/ecistm/tlpa/data/tlpa01-lesson3-quiz.xml';//Course 1, Lesson 3
//			service.url = 'com/ecistm/tlpa/data/tlpa01-lesson4-quiz.xml';//Course 1, Lesson 4

			service.resultFormat = 'object';
			var responder:Responder = new Responder(onServiceResult, onServiceFault);
			var token:AsyncToken = service.send();
			token.addResponder(responder);
		}
		
		private function onServiceResult(e:ResultEvent):void
		{
			//course1
			lesson = service.lastResult.lessons;
			//course9
//			lesson = service.lastResult.lessons.lesson;
//			for each(var o:Object in lesson)
//				Alert.show(o.number);
			dispatch(new SearchResultEvent(SearchResultEvent.RECEIVED, lesson));
		}

		private function onServiceFault(e:FaultEvent):void
		{
			Alert.show(e.fault.faultDetail);
		}
	}
}