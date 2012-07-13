package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.events.QuizSuccessEvent;
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.FeedbackImagesModel;
	import com.ecistm.tlpa.models.QuestionPoolModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	import com.ecistm.tlpa.views.LockoutView;
	
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	
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
		public var questionPoolModel:QuestionPoolModel;
		
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
					if(e.detail == Alert.OK && responseModel.pool != String(questionPoolModel.questionPools.length))
						dispatch(new SubmitEvent(SubmitEvent.NEXT_QUESTION, '', responseModel));
					else
						dispatch(new QuizSuccessEvent(QuizSuccessEvent.SUCCESS));
				});
				alert.setStyle('buttonStyleName', 'styledAlertButtons');
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
						feedback.y = 135;
						feedback.x = 360;
						feedback.percentHeight = feedback.percentWidth = 100;
//						feedback.height = 540;
//						feedback.width = 720;
						PopUpManager.addPopUp(feedback, contextView, true);
//						PopUpManager.centerPopUp(feedback);
						mediatorMap.createMediator(feedback);
						feedback.currentState = 'incorrectImageView';
						addFeedbackImages();
					});
					alert.setStyle('buttonStyleName', 'styledAlertButtonsIncorrect');
				}
				else
				{
					var a:URLRequest = new URLRequest('http://tlpa.ecistm.com/testLockout/lockout.swf');
					navigateToURL(a, '_parent');
				}
			}
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