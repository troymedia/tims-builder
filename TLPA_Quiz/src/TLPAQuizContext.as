package
{
	import com.ecistm.tlpa.commands.*;
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	import com.ecistm.tlpa.components.ResponseAlert;
	import com.ecistm.tlpa.components.ResponseWithImage;
	import com.ecistm.tlpa.components.SmartCheckbox;
	import com.ecistm.tlpa.components.SmartCheckboxGroup;
	import com.ecistm.tlpa.components.SubmitButton;
	import com.ecistm.tlpa.components.TLPAQuizTitle;
	import com.ecistm.tlpa.events.*;
	import com.ecistm.tlpa.mediators.*;
	import com.ecistm.tlpa.mediators.SmartCheckboxGroupMediator;
	import com.ecistm.tlpa.models.*;
	import com.ecistm.tlpa.services.LessonsService;
	import com.ecistm.tlpa.views.*;
	
	import flash.display.DisplayObjectContainer;
	
	import org.robotlegs.base.ContextEvent;
	import org.robotlegs.mvcs.Context;
	
	import spark.components.CheckBox;
	
	
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
			mediatorMap.mapView(SmartCheckboxGroup, SmartCheckboxGroupMediator, SmartCheckboxGroup);
			mediatorMap.mapView(SmartCheckbox, CheckboxMediator, SmartCheckbox);
			mediatorMap.mapView(SubmitButton, SubmitButtonMediator, SubmitButton);
			mediatorMap.mapView(FeedbackDialogBox, FeedbackDialogBoxMediator, FeedbackDialogBox);
			mediatorMap.mapView(Question, QuestionMediator, Question);
			mediatorMap.mapView(TLPAQuizTitle, TLPAQuizTitleMediator, TLPAQuizTitle);
			mediatorMap.mapView(ResponseWithImage, ResponseWithImageMediator, ResponseWithImage);
//			mediatorMap.mapView(ResponseAlert, ResponseAlertMediator, ResponseAlert);
			
			//commands
			commandMap.mapEvent(SearchResultEvent.RECEIVED, PopulateFeedbackImagesModelCommand, SearchResultEvent);
			commandMap.mapEvent(SubmitEvent.REGISTER_ANSWERS, RegisterAnswersCommand, SubmitEvent);
			commandMap.mapEvent(SubmitEvent.SUBMIT_ANSWERS, SubmitAnswerCommand, SubmitEvent);
			commandMap.mapEvent(SubmitEvent.ANSWER_SUBMITTED, FeedbackDialogCommand, SubmitEvent);
			commandMap.mapEvent(AnswerSelectionEvent.IMAGE_ANSWER_SELECTED, RegisterImageAnswersCommand, AnswerSelectionEvent);
//			commandMap.mapEvent(CorrectAnswerEvent.CORRECT, StepThroughQuestionsCommand, CorrectAnswerEvent);
//			commandMap.mapEvent(RetryQuizEvent.RETRY, RegisterImageAnswersCommand, RetryQuizEvent);
			
			//injectors
			injector.mapSingleton(LessonsService);
			injector.mapSingleton(LessonsModel);
			injector.mapSingleton(QuestionPoolModel);
			injector.mapSingleton(QuestionModel);
			injector.mapSingleton(AnswersModel);
			injector.mapSingleton(ResponseTextModel);
			injector.mapSingleton(ResponsesModel);
			injector.mapSingleton(FeedbackImagesModel);
			injector.mapSingleton(ImageAnswersModel);
		}
	}
}