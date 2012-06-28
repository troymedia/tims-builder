package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.models.QuestionModel;
	import com.ecistm.tlpa.models.QuestionPoolModel;
	import com.ecistm.tlpa.services.LessonsService;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class FetchDataCommand extends Command
	{
		[Inject]
		public var event:SearchResultEvent;
		
		[Inject]
		public var service:LessonsService;
		
		
		[Inject]
		public var question:QuestionPoolModel;
		
		public function FetchDataCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			updateQuestionModel()
			//dispatch(new SearchResultEvent(SearchResultEvent.POPULATE));
		}
		
		protected function updateQuestionModel():void
		{
			for each(var obj:Object in event.results)//questionPools
			{
				
			}
		}
	}
}