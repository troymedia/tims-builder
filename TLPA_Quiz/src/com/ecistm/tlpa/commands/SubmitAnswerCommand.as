package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.AnswersModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class SubmitAnswerCommand extends Command
	{
		[Inject]
		public var answers:AnswersModel;
		
		[Inject]
		public var event:SubmitEvent;
		
		public function SubmitAnswerCommand()
		{
			super();
		}
		
		override public function execute():void
		{
//			if(answers.answers.length == 0)
//				Alert.show('You must enter a selection.', 'Invalid Answer', Alert.OK|Alert.CANCEL);
//			else
				Alert.show('ll');
		}
	}
}