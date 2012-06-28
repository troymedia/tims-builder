package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.AnswersModel;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class RegisterAnswersCommand extends Command
	{
		[Inject]
		public var model:AnswersModel;
		
		[Inject]
		public var event:SubmitEvent;
		
		public function RegisterAnswersCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			Alert.show('Registered answer: ' + event.answer);
			if(model.answers.length > 0)
			{
				model.removeAnswers();
				model.registerAnswers(event.answer);
			}
			
			Alert.show(String(model.answers.getItemAt(0)));
		}
	}
}