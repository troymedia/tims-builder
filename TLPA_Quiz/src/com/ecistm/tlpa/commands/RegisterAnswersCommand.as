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
			responseModel.audio = event.answer.audio;
//			Alert.show('r: ' + responseModel.audio);
			responseModel.pool = event.answer.questionPool;
			responseModel.label = event.question;
			responseModel.correct = (event.answer.correct == 'false') ? false : true;
			responseModel.cardinality = event.answer.cardinality;
			if(event.answer.cardinality == 'single' && responses.answers.length > 0)
				responses.answers.removeAll();
			responses.pool = responseModel.pool;
			responses.answers.addItem(responseModel);
//			Alert.show('r2: ' + responseModel.audio);
		}
		
		protected function removeFromResponseModel(responseLabel:String):void
		{
			for(var i:int=0;i<responses.answers.length;i++)
				if(responseLabel == responses.answers[i].label)
				{
					responses.answers.removeItemAt(i);
				}
		}
	}
}