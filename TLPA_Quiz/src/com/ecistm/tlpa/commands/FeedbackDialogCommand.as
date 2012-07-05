package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.models.FeedbackImagesModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	
	import org.robotlegs.mvcs.Command;
	
	public class FeedbackDialogCommand extends Command
	{
		[Inject]
		public var responseModel:ResponseTextModel;
		
		[Inject]
		public var feedbackModel:FeedbackImagesModel;
		
		protected var feedback:FeedbackDialogBox;
		
		public function FeedbackDialogCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			feedback = new FeedbackDialogBox();
			feedback.verticalCenter = feedback.horizontalCenter = 0;
			feedback.audio = responseModel.audio;
			feedback.videoSource = responseModel.video;
			PopUpManager.addPopUp(feedback, contextView);
			mediatorMap.createMediator(feedback);
			feedback.currentState = 'incorrectImageView';
			addFeedbackImages();
		}
		
		protected function addFeedbackImages():void
		{
			var obj:Object;
			for each(obj in feedbackModel.images)
			{
				if(obj.pool == responseModel.pool)
					feedback.feedbackImages.addItem(obj);
			}
			feedback.populateImageStack(feedback.feedbackImages);
		}
	}	
}