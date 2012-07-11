package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.FeedbackImagesModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	import com.ecistm.tlpa.views.LockoutView;
	
	import mx.controls.Alert;
	import mx.events.CloseEvent;
	import mx.managers.PopUpManager;
	
	import org.robotlegs.mvcs.Command;
	
	public class FeedbackDialogCommand extends Command
	{
		[Inject]
		public var responseModel:ResponseTextModel;
		
		[Inject]
		public var feedbackModel:FeedbackImagesModel;
		
		[Inject]
		public var submitEvent:SubmitEvent;
		
		protected var feedback:FeedbackDialogBox;
		
		public function FeedbackDialogCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			var alert:Alert;
			if(submitEvent.questionType == 'true')
			{
				Alert.buttonWidth = 180;
				Alert.okLabel = 'Continue';
				Alert.cancelLabel = 'Retry Quiz';
				alert = Alert.show("That'\'s right! You have selected the correct response.", 'Correct', Alert.OK, null, function(e:CloseEvent):void{ 
					if(e.detail == Alert.OK)
						dispatch(new SubmitEvent(SubmitEvent.NEXT_QUESTION, '', responseModel));
				});
			}
			else if(submitEvent.questionType == 'false')
			{
				responseModel.numIncorrectAnswers++;
				if(responseModel.numIncorrectAnswers <= 2)
				{
					Alert.buttonWidth = 180;
					Alert.okLabel = "Review Information";
					alert = Alert.show('You did not select the correct response.', 'Incorrect', Alert.OK, null, function(e:CloseEvent):void{
						feedback = new FeedbackDialogBox();
						feedback.verticalCenter = feedback.horizontalCenter = 0;
						feedback.audio = responseModel.audio;
						feedback.videoSource = responseModel.video;
						feedback.y = feedback.x = 0;
						feedback.height = contextView.height;
						feedback.width = contextView.width;
						PopUpManager.addPopUp(feedback, contextView, true);
						mediatorMap.createMediator(feedback);
						feedback.currentState = 'incorrectImageView';
						addFeedbackImages();
					});
				}
				else
				{
					var lockout:LockoutView = new LockoutView();
					lockout.x = lockout.y = 0;
					lockout.height = contextView.height;
					lockout.width = contextView.width;
					PopUpManager.addPopUp(lockout, contextView, true);
					mediatorMap.createMediator(lockout);
					Alert.buttonWidth = 87;
					Alert.okLabel = 'OK';
					Alert.show("This course cannot be successfully" + '\n' + 
						"completed today because there are more" + '\n' + 
						"incorrect question answers than allowed. The system" + '\n' + 
						"is now locked until 8am tomorrow morning." + '\n' + 
						"After that time, you will be able to enter the system" + '\n' + 
						"and retake this course or begin another one.", 'Lockout', Alert.OK, null, function(e:CloseEvent):void{
							//insert lockout code here
						});
				}
			}
			
			alert.setStyle('buttonStyleName', 'styledAlertButtons');
		}
		
		protected function addFeedbackImages():void
		{
			var obj:Object;
			for each(obj in feedbackModel.images)
			{
				
				if(obj.pool == responseModel.pool)
				{
					feedback.feedbackImages.addItem(obj);
				}
			}
			feedback.populateImageStack(feedback.feedbackImages);
		}
	}	
}