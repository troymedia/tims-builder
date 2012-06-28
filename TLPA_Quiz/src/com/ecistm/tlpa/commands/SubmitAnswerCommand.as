package com.ecistm.tlpa.commands
{
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class SubmitAnswerCommand extends Command
	{
		public function SubmitAnswerCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			Alert.show('submitted');
		}
	}
}