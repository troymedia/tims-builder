package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.models.ResponseTextModel;
	
	import mx.managers.PopUpManager;
	
	import org.robotlegs.mvcs.Command;
	
	public class FeedbackDialogCommand extends Command
	{
		[Inject]
		public var responseModel:ResponseTextModel;
		
		public function FeedbackDialogCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			var feedback:FeedbackDialogBox = new FeedbackDialogBox();
			feedback.verticalCenter = feedback.horizontalCenter = 0;
//			feedback.audio = responseModel.audio;
//			feedback.videoSource = responseModel.video;
			//feedback.imageSource = responseModel.image;
			PopUpManager.addPopUp(feedback, contextView);
//			PopUpManager.centerPopUp(feedback);
			mediatorMap.createMediator(feedback);
			feedback.currentState = 'incorrectImageView';
		}
	}
}