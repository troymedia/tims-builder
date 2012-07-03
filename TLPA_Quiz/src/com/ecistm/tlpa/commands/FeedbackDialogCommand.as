package com.ecistm.tlpa.commands
{
	import com.ecistm.tlpa.components.FeedbackDialogBox;
	
	import mx.managers.PopUpManager;
	
	import org.robotlegs.mvcs.Command;
	
	public class FeedbackDialogCommand extends Command
	{
		public function FeedbackDialogCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			var feedback:FeedbackDialogBox = new FeedbackDialogBox();
			feedback.verticalCenter = feedback.horizontalCenter = 0;
			PopUpManager.addPopUp(feedback, contextView);
//			PopUpManager.centerPopUp(feedback);
			mediatorMap.createMediator(feedback);
			feedback.currentState = 'incorrectImageView';
		}
	}
}