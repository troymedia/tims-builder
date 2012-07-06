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
			responseModel.numIncorrectAnswers++;
			if(responseModel.numIncorrectAnswers < 3)
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
			else
			{
				Alert.buttonWidth = 87;
				Alert.okLabel = 'OK';
				Alert.show("This course cannot be successfully" + '\n' + 
					"completed today because there are more" + '\n' + 
					"incorrect question answers than allowed." + '\n' + 
					"The system is now locked until 8am tomorrow morning." + '\n' + 
					"After that time, you will be able to enter the system and" + '\n' + 
					"retake this course or begin another one.", 'Lockout', Alert.OK);
			}
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