package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.AnswersModel;
	import com.ecistm.tlpa.models.FeedbackImagesModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	import com.ecistm.tlpa.models.ResponsesModel;
	
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
	import flash.utils.flash_proxy;
	
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	
	import org.robotlegs.mvcs.Command;
	
	public class SubmitAnswerCommand extends Command
	{
		[Inject]
		public var answers:AnswersModel;
		
		[Inject]
		public var responseModel:ResponsesModel;		
		[Inject]
		public var event:SubmitEvent;
		
		[Bindable] protected var audio:Sound = new Sound();
		
		public function SubmitAnswerCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			var allAnswersCorrect:Boolean = false;
			var numOfIncorrectAnswers:int = 0;
			for each(var response:ResponseTextModel in responseModel.answers)
			{
				if(response.correct == false)
					numOfIncorrectAnswers++;
				if(numOfIncorrectAnswers > 0)
					allAnswersCorrect = false;
				else
					allAnswersCorrect = true;
			}

			dispatch(new SubmitEvent(SubmitEvent.ANSWER_SUBMITTED, String(allAnswersCorrect)));
			responseModel.answers.removeAll();
		}
	}
}