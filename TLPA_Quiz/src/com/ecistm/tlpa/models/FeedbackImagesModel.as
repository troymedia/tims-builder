package com.ecistm.tlpa.models
{
	import mx.collections.ArrayCollection;
	
	import org.robotlegs.mvcs.Actor;
	
	public class FeedbackImagesModel extends Actor
	{
		[Bindable] public var source:String;
		[Bindable] public var pool:String;
		[Bindable] public var images:ArrayCollection = new ArrayCollection();
		
		public function FeedbackImagesModel()
		{
			super();
		}
		
		public function addImage(source:String, pool:String):void
		{
			images.addItem( {source: source, pool: pool} );
		}
	}
}