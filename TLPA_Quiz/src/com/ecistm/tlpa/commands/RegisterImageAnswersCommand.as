package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.AnswerSelectionEvent;
	import com.ecistm.tlpa.models.ImageAnswersModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class RegisterImageAnswersCommand extends Command
	{
		[Inject]
		public var imageAnswersModel:ImageAnswersModel;
		
		[Inject]
		public var responseModel:ResponseTextModel;
		
		[Inject]
		public var event:AnswerSelectionEvent;
		public function RegisterImageAnswersCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			var response:Object;
//			Alert.show(String(imageAnswersModel.imageAnswers.length));
			for each(var img:Object in imageAnswersModel.imageAnswers)
			{
//				Alert.show('selected: ' + String(img.selected));
				for each(response in img.response)
					if(response.text == event.selection)
					{
						imageAnswersModel.registeredAnswer = response.text;
						responseModel.correct = (response.correct == '0') ? false : true;
					}
			}
//			diapa
//			Alert.show('response: ' + String(responseModel.correct));		
		}
	}
}