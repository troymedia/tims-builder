package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.ImageWithAnswer;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class QuestionWithImageAnswerMediator extends Mediator
	{
		[Inject]
		public var view:ImageWithAnswer;
		public function QuestionWithImageAnswerMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
//			eventMap.mapListener(view.button
		}
	}
}