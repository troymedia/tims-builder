package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.AnswersModel;
	import com.ecistm.tlpa.models.QuestionModel;
	import com.ecistm.tlpa.models.QuestionPoolModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	import com.ecistm.tlpa.models.ResponsesModel;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class RegisterAnswersCommand extends Command
	{
		[Inject]
		public var answersModel:AnswersModel;
		
//		[Inject]
//		public var responseModel:ResponseTextModel;
		
		[Inject]
		public var responses:ResponsesModel;
		
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
//			Alert.show('..');
			if(event.selected == true)
				populateResponseTextModel();
			else
				removeFromResponseModel(event.question);
			answersModel.removeAnswers();
			answersModel.registerAnswers(event.answer.registeredAnswer);
		}
		
		protected function populateResponseTextModel():void
		{
			var responseModel:ResponseTextModel = new ResponseTextModel();
			responseModel.pool = event.answer.questionPool;
			responseModel.label = event.question;
			responseModel.correct = (event.answer.correct == 'false') ? false : true;
			if(event.answer.cardinality == 'single' && responses.answers.length > 0)
				responses.answers.removeAll();
			responses.pool = responseModel.pool;
			responses.answers.addItem(responseModel);
//			Alert.show(String(responses.answers.length));
//			Alert.show('correct: ' + event.answer.correct + '\npool: ' + responseModel.pool, 'Response Model');
		}
		
		protected function removeFromResponseModel(responseLabel:String):void
		{
			for(var i:int=0;i<responses.answers.length;i++)
				if(responseLabel == responses.answers[i].label)
				{
//					Alert.show(responses.answers[i].label);
					responses.answers.removeItemAt(i);
//					Alert.show(String(responses.answers.length));
				}
		}
		
		protected function checkCardinality():void
		{
			
		}
		
		protected function populateQuestionPoolModel():void
		{
			
		}
		
//		public function registerSelection():void
//		{
//			if(e.answer.cardinality == 'multiple')
//				registerMultipleAnswers();
//			else
//				registerSingleAnswer(cb.questionLabel);
//		}
//		
//		public function registerSingleAnswer(selection:String):void
//		{
//			registeredAnswer = selection;
//			Alert.show('registered answer: ' + selection);
//		}
//		
//		public function registerMultipleAnswers():void
//		{
//			Alert.show('multiple');
//		}
	}
}