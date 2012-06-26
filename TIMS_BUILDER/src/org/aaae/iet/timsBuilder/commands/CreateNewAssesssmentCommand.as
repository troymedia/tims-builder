package org.aaae.iet.timsBuilder.commands{
	import mx.controls.Alert;
	import mx.managers.PopUpManager;
	
	import org.aaae.iet.timsBuilder.events.AssessmentEvent;
	import org.aaae.iet.timsBuilder.views.AssessmentDialogWindow;
	import org.robotlegs.mvcs.Command;
	
	public class CreateNewAssesssmentCommand extends Command{
		[Inject]
		public var event:AssessmentEvent;
		public function CreateNewAssesssmentCommand(){
			super();
		}
		
		override public function execute():void{
//			Alert.show('made it.');
			var assessmentDialog:AssessmentDialogWindow = new AssessmentDialogWindow();
			PopUpManager.addPopUp(assessmentDialog, contextView);
			PopUpManager.centerPopUp(assessmentDialog);
			mediatorMap.createMediator(assessmentDialog);
		}
	}
}