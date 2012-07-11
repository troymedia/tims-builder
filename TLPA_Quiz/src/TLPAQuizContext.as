package
{
	import com.ecistm.tlpa.commands.*;
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.components.SubmitButton;
	import com.ecistm.tlpa.components.TLPAQuizTitle;
	import com.ecistm.tlpa.events.*;
	import com.ecistm.tlpa.mediators.*;
	import com.ecistm.tlpa.models.*;
	import com.ecistm.tlpa.services.LessonsService;
	import com.ecistm.tlpa.views.*;
	
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
			mediatorMap.mapView(QuizView_old, QuizViewMediator, QuizView_old);
			mediatorMap.mapView(SubmitButton, SubmitButtonMediator, SubmitButton);
			mediatorMap.mapView(FeedbackDialogBox, FeedbackDialogBoxMediator, FeedbackDialogBox);
			mediatorMap.mapView(Question, QuestionMediator, Question);
			mediatorMap.mapView(TLPAQuizTitle, TLPAQuizTitleMediator, TLPAQuizTitle);
			
			//commands
			commandMap.mapEvent(SearchResultEvent.RECEIVED, PopulateFeedbackImagesModelCommand, SearchResultEvent);
			commandMap.mapEvent(SubmitEvent.REGISTER_ANSWERS, RegisterAnswersCommand, SubmitEvent);
			commandMap.mapEvent(SubmitEvent.SUBMIT_ANSWERS, SubmitAnswerCommand, SubmitEvent);
			commandMap.mapEvent(SubmitEvent.ANSWER_SUBMITTED, FeedbackDialogCommand, SubmitEvent);
//			commandMap.mapEvent(LaunchFeedbackEvent.LAUNCH, FeedbackDialogCommand, LaunchFeedbackEvent);
			
			//injectors
			injector.mapSingleton(LessonsService);
			injector.mapSingleton(LessonModel);
			injector.mapSingleton(QuestionPoolModel);
			injector.mapSingleton(QuestionModel);
			injector.mapSingleton(AnswersModel);
			injector.mapSingleton(ResponseTextModel);
			injector.mapSingleton(FeedbackImagesModel);
		}
	}
}