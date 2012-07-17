package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.CorrectAnswerEvent;
	import com.ecistm.tlpa.events.QuizSuccessEvent;
	import com.ecistm.tlpa.events.SubmitEvent;
	import com.ecistm.tlpa.models.QuestionPoolModel;
	import com.ecistm.tlpa.models.ResponseTextModel;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class StepThroughQuestionsCommand extends Command
	{
		[Inject]
		public var responseModel:ResponseTextModel;
		
		[Inject]
		public var questionPoolModel:QuestionPoolModel;
		
		[Inject]
		public var correctAnswerEvent:CorrectAnswerEvent;
		public function StepThroughQuestionsCommand()
		{
			super();
		}
		
		override public function execute():void
		{
//			Alert.show((String(correctAnswerEvent.detail) + ' ' + responseModel.pool + ' ' + String(questionPoolModel.questionPools.length)));
			Alert.show('Nas');
//			if(correctAnswerEvent.detail == Alert.OK && responseModel.pool != String(questionPoolModel.questionPools.length))
//				dispatch(new SubmitEvent(SubmitEvent.NEXT_QUESTION, '', responseModel));
//			else
//				dispatch(new QuizSuccessEvent(QuizSuccessEvent.SUCCESS));
		}
	}
}