package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class Lesson extends Actor
	{
		[Bindable] public var id:String;
		[Bindable] public var questionPools:ArrayCollection;
		public function Lesson()
		{
			super();
		}
	}
}