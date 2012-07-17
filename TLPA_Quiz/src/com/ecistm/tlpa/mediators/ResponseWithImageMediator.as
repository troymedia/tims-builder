package com.ecistm.tlpa.mediators
{
	import com.ecistm.tlpa.components.ResponseWithImage;
	import com.ecistm.tlpa.events.AnswerSelectionEvent;
	import com.ecistm.tlpa.events.RetryQuizEvent;
	
	import flash.events.MouseEvent;
	
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Mediator;
	
	public class ResponseWithImageMediator extends Mediator
	{
		[Inject]
		public var view:ResponseWithImage;
		public function ResponseWithImageMediator()
		{
			super();
		}
		
		override public function onRegister():void
		{
			addViewListener(MouseEvent.CLICK, onClick, MouseEvent);
		}
		
		protected function onClick(e:MouseEvent):void
		{
			
			view.selected = true;
			dispatch(new AnswerSelectionEvent(AnswerSelectionEvent.IMAGE_ANSWER_SELECTED, e.currentTarget.buttonLabel, view));
//			Alert.show(e.currentTarget.buttonLabel);
		}
	}
}