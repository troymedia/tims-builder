package
{
	import com.ecistm.tlpa.commands.*;
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.components.SubmitButton;
	import com.ecistm.tlpa.events.*;
	import com.ecistm.tlpa.mediators.*;
	import com.ecistm.tlpa.models.QuestionModel;
	import com.ecistm.tlpa.models.QuestionPoolModel;
	import com.ecistm.tlpa.services.LessonsService;
	import com.ecistm.tlpa.views.Question;
	import com.ecistm.tlpa.views.QuizView;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	
	public class TLPAQuizContext extends Context
	{
		public function TLPAQuizContext()
		{
			
		}
		
		override public function startup():void
		{
			super.startup();
			
			//mediators
			mediatorMap.mapView(QuizView, QuizViewMediator, QuizView);
			mediatorMap.mapView(SubmitButton, SubmitButtonMediator, SubmitButton);
			mediatorMap.mapView(FeedbackDialogBox, FeedbackDialogBoxMediator, FeedbackDialogBox);
			mediatorMap.mapView(Question, QuestionMediator, Question);
			
			//commands
			commandMap.mapEvent(SearchResultEvent.RECEIVED, FetchDataCommand, SearchResultEvent);
			commandMap.mapEvent(SubmitEvent.SUBMIT_ANSWERS, SubmitAnswerCommand, SubmitEvent);
			
			//injectors
			injector.mapSingleton(LessonsService);
			injector.mapSingleton(QuestionPoolModel);
			injector.mapSingleton(QuestionModel);
		}
	}
}