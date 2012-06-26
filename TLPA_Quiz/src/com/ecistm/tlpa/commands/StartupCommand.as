package com.ecistm.tlpa.commands
{
	import mx.controls.Alert;
	
	import org.robotlegs.mvcs.Command;
	
	public class StartupCommand extends Command
	{
		public function StartupCommand()
		{
			super();
		}
		
		override public function execute():void
		{
			Alert.show('startup');
		}
	}
}