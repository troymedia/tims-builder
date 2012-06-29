package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.AnswersModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	
	import flash.media.Sound;
	import flash.media.SoundChannel;
	import flash.net.URLRequest;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class SubmitAnswerCommand extends Command
	{
		[Inject]
		public var answers:AnswersModel;
		
		[Inject]
		public var event:SubmitEvent;
		
		[Bindable] protected var audio:Sound = new Sound();
		
		public function SubmitAnswerCommand()
		{
			super();
		}
		
		override public function execute():void
		{
//			if(answers.answers.length == 0)
//				Alert.show('You must complete the question before submitting.', 'Invalid Answer', Alert.OK|Alert.CANCEL);
//			else
				//Alert.show("That'\'s right! You have selected the correct response.", 'Correct', Alert.OK|Alert.CANCEL); //Continue, Retry Quiz
			
//			Alert.show('You did not select the correct response.', 'Incorrect', Alert.OK|Alert.CANCEL); //Next Question
//				var request:URLRequest = new URLRequest('assets/audio/spanish_joint.mp3');
//				var channel:SoundChannel = new SoundChannel();
//				audio.load(request);
				//channel = audio.play();
				dispatch(new SubmitEvent(SubmitEvent.ANSWER_SUBMITTED));
		}
	}
}