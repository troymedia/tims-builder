package com.ecistm.tlpa.events
{
	import com.ecistm.tlpa.components.SmartCheckbox;
	import com.ecistm.tlpa.views.Question;
	
	import flash.events.Event;
	
	public class SubmitEvent extends Event
	{
		public static const REGISTER_ANSWERS:String = 'registerAnswers';
		public static const SUBMIT_ANSWERS:String = 'submitAnswers';
		public static const ANSWER_SUBMITTED:String = 'answerSubmitted';
		public static const CLOSE_FEEDBACK:String = 'closeFeedback';
		public static const NEXT_QUESTION:String = 'nextQuestion';
		
		[Bindable] public var question:*;
		[Bindable] public var questionType:String;
		[Bindable] public var answer:*;
		public var answers:Array = [];
		public var selected:Boolean;

		public function SubmitEvent(type:String, questionType:String='', question:*=null, answer:*=null, answers:Array=null, selected:Boolean=true)
		{
			super(type);
			this.question = question;
			this.questionType = questionType;
			this.answer = answer;
			this.answers = answers;
			this.selected = selected;
		}
		
		override public function clone():Event
		{
			return new SubmitEvent(type, questionType, question, answer, answers, selected);
		}
	}
}