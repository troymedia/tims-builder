package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.models.FeedbackImagesModel;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class PopulateFeedbackImagesModelCommand extends Command
	{
		[Inject]
		public var feedbackModel:FeedbackImagesModel;
		
		[Inject]
		public var event:SearchResultEvent;
		public function PopulateFeedbackImagesModelCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			for each(var obj:Object in event.results.incorrectFeedback.image)
			{
				feedbackModel.images.addItem(obj);
//				Alert.show('..');
			}
		}
	}
}