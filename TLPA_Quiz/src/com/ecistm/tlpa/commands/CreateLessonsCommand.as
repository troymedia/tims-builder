package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.models.FeedbackImagesModel;
	import com.ecistm.tlpa.models.LessonsModel;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class CreateLessonsCommand extends Command
	{
		[Inject]
		public var feedbackImagesModel:FeedbackImagesModel;
		
		[Inject]
		public var lessonsModel:LessonsModel;
		
		[Inject]
		public var event:SearchResultEvent;
		public function CreateLessonsCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			createFeedbackImagesModel();
		}
		
		protected function createFeedbackImagesModel():void
		{
			for each(var lesson:Object in event.results.lesson)
			{
				var lesson:Les
				//feedbackImagesModel.images.addItem(obj);
			}
		}
	}
}