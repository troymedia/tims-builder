package com.ecistm.tlpa.events
{
	import com.ecistm.tlpa.views.Question;
	
	import flash.events.Event;
	
	public class SubmitEvent extends Event
	{
		public static const REGISTER_ANSWERS:String = 'submit';
		public static const SUBMIT_ANSWERS:String = 'validate';
		public static const ANSWER_SUBMITTED:String = 'submitted';
		public static const CLOSE_FEEDBACK:String = 'closeFeedback';
		public static const NEXT_QUESTION:String = 'nextQuestion';
		
		[Bindable] public var question:*;
		[Bindable] public var questionType:String;
		[Bindable] public var answer:Question;
		private var answers:Array = [];

		public function SubmitEvent(type:String, questionType:String='', question:*=null, answer:Question=null, answers:Array=null)
		{
			super(type);
			this.question = question;
			this.questionType = questionType;
			this.answer = answer;
			this.answers = answers;
		}
		
		override public function clone():Event
		{
			return new SubmitEvent(type, questionType, question, answer, answers);
		}
	}
}