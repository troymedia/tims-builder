package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.AnswersModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	
	import org.robotlegs.mvcs.Command;
	
	public class SubmitAnswerCommand extends Command
	{
		[Inject]
		public var answers:AnswersModel;
		
		[Inject]
		public var responseModel:ResponseTextModel;
		
		[Inject]
		public var event:SubmitEvent;
		
		[Bindable] protected var audio:Sound = new Sound();
		
		public function SubmitAnswerCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			var feedback:FeedbackDialogBox = new FeedbackDialogBox();
			feedback.height = contextView.height / 2;
			feedback.width = contextView.width / 2;
			PopUpManager.addPopUp(feedback, contextView);
			PopUpManager.centerPopUp(feedback);
			mediatorMap.createMediator(feedback);
			dispatch(new SubmitEvent(SubmitEvent.ANSWER_SUBMITTED, String(responseModel.correct)));
		}
	}
}