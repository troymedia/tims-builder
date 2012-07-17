package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.events.SearchResultEvent;
	import com.ecistm.tlpa.models.LessonsModel;
	import com.ecistm.tlpa.models.QuestionModel;
	import com.ecistm.tlpa.models.QuestionPoolModel;
	import com.ecistm.tlpa.services.LessonsService;
	import com.ecistm.tlpa.views.Question;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class FetchDataCommand extends Command
	{
		[Inject]
		public var event:SearchResultEvent;
		
		[Inject]
		public var service:LessonsService;
		
		[Inject]
		public var lessonModel:LessonsModel;
		
		[Inject]
		public var question:QuestionPoolModel;
		
		public function FetchDataCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			buildLesson();
		}
		
		protected function buildLesson():void
		{
			for each(var qp:Object in service.lesson.questionPool)
			{
				for each(var q:Object in qp.question)
				{
					var question:Question = new Question();
					question.type = q.type;
					question.text = q.text;
					question.audio = q.audio;
					question.cardinality = q.cadinality;
					Alert.show(question.text);
				}
			}
			
			lessonModel.questionPools.addItem(qp);
		}
		
		protected function updateQuestionModel():void
		{
			Alert.show(String(service.lesson.id));
		}
	}
}