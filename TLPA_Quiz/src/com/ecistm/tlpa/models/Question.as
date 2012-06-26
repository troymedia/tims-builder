package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class Question extends Actor
	{
		[Bindable] public var type:String;
		[Bindable] public var text:String;
		[Bindable] public var responses:ArrayCollection;
		[Bindable] public var feedback:Feedback;
		
		public function Question()
		{
			super();
		}
	}
}