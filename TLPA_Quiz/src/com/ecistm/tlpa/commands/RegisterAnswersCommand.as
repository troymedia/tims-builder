package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.AnswersModel;
	import com.ecistm.tlpa.models.QuestionModel;
	import com.ecistm.tlpa.models.QuestionPoolModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class RegisterAnswersCommand extends Command
	{
		[Inject]
		public var answersModel:AnswersModel;
		
		[Inject]
		public var responseModel:ResponseTextModel;
		
		[Inject]
		public var questionPoolModel:QuestionPoolModel;
		
		[Inject]
		public var event:SubmitEvent;
		
		public function RegisterAnswersCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			populateResponseTextModel()
			answersModel.removeAnswers();
			answersModel.registerAnswers(event.question.registeredAnswer);
		}
		
		protected function populateResponseTextModel():void
		{
			responseModel.pool = event.answer.pool;
			responseModel.label = event.question.label;
			responseModel.correct = (event.question.name == 'false') ? false : true;
//			Alert.show('correct: ' + event.question.name + '\npool: ' + responseModel.pool);
//			responseModel.audio = event.question.incorrectAudio;
//			responseModel.video = event.question.incorrectVideo;
//			responseModel.image = event.question.incorrectImage;
		}
		
		protected function populateQuestionPoolModel():void
		{
			
		}
	}
}