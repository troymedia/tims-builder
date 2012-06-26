package
{
	import com.idxd.components.buttons.AddButton;
	import com.idxd.components.common.LoginPanel;
	
	import flash.display.DisplayObjectContainer;
	
	import org.aaae.iet.timsBuilder.commands.CreateNewAssesssmentCommand;
	import org.aaae.iet.timsBuilder.events.AssessmentEvent;
	import org.aaae.iet.timsBuilder.mediators.*;
	import org.aaae.iet.timsBuilder.views.MainView;
	import org.robotlegs.mvcs.Context;
	
	public class IETContext extends Context
	{
		public function IETContext(contextView:DisplayObjectContainer=null, autoStartup:Boolean=true)
		{
			super(contextView, autoStartup);
		}
		
		override public function startup():void
		{
			mediatorMap.mapView(MainView, MainViewMediator, MainView);
			mediatorMap.mapView(LoginPanel, LoginPanelMediator, LoginPanel);
			mediatorMap.mapView(AddButton, AddButtonMediator, AddButton);
			
			commandMap.mapEvent(AssessmentEvent.CREATE_NEW_ASSESSMENT, CreateNewAssesssmentCommand, AssessmentEvent);
		}
	}
}