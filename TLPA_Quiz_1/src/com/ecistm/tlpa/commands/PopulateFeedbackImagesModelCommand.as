package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.models.FeedbackImagesModel;
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
		public var event:SearchResultEvent;
		public function PopulateFeedbackImagesModelCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			Alert.show('execute');
			populateFeedbackImages();
			populateQuestionPoolModel();
		}
		
		protected function populateFeedbackImages():void
		{
			feedbackModel.correctResponseAudio = event.results.correctResponse.audio;
			for each(var obj:Object in event.results.lesson.incorrectFeedback.image)
			{
				feedbackModel.images.addItem(obj);
			}
		}
		
		protected function populateQuestionPoolModel():void
		{
			for each(var pool:Object in event.results.lesson.questionPool)
			{
				questionPoolModel.questionPools.addItem(pool);
			}
//			Alert.show(String(questionPoolModel.questionPools.length));
//			questionPoolModel.correctResponseAudio = event.results.correctResponse.audio;
//			questionPoolModel.correctResponseText = event.results.correctResponse.text;
		}
	}
}