package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.models.AnswersModel;
	import com.ecistm.tlpa.models.FeedbackImagesModel;
	import com.ecistm.tlpa.models.ImageAnswersModel;
	import com.ecistm.tlpa.models.QuestionPoolModel;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class PopulateFeedbackImagesModelCommand extends Command
	{
		[Inject]
		public var feedbackModel:FeedbackImagesModel;
		
		[Inject]
		public var questionPoolModel:QuestionPoolModel;
		
		[Inject]
		public var imageAnswersModel:ImageAnswersModel;
		
		[Inject]
		public var answersModel:AnswersModel;
		
		[Inject]
		public var event:SearchResultEvent;
		public function PopulateFeedbackImagesModelCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			populateFeedbackImages();
			populateQuestionPoolModel();
		}
		
		protected function populateFeedbackImages():void
		{
//			feedbackModel.correctResponseAudio = event.results.correctResponse.audio;
			for each(var obj:Object in event.results.lesson.incorrectFeedback.image)
			{
				feedbackModel.images.addItem(obj);
			}
		}
		
		protected function populateQuestionPoolModel():void
		{
			for each(var pool:Object in event.results.lesson.questionPool)
			{
//				Alert.show('pool');
				questionPoolModel.questionPools.addItem(pool);
				for each(var q:Object in pool.question)
				{
					if(q.type == 'MCG')
						populateImageAnswersModel(q);
					else
						populateAnswersModel(q);
				}
			}
//			questionPoolModel.correctResponseAudio = event.results.correctResponse.audio;
//			questionPoolModel.correctResponseText = event.results.correctResponse.text;
		}
		
		protected function populateImageAnswersModel(question:Object):void
		{
			imageAnswersModel.imageAnswers.addItem(question);
//			Alert.show('image answers: ' + String(imageAnswersModel.imageAnswers.length));
		}
		
		protected function populateAnswersModel(question:Object):void
		{
			answersModel.answers.addItem(question);
//			Alert.show('answers: ' + String(answersModel.answers.length));
		}
	}
}