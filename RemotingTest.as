package 
{
	import flash.net.Responder;
	import flash.display.MovieClip;
	import ayz.utils.MonsterDebugger;
	
	public class RemotingTest extends MovieClip
	{
		private var rs:RemotingService;
 
		function RemotingTest()
		{
			Debug("init");
			init();
		}
 
		private function init()
		{
			rs = new RemotingService("http://beta.ayzstaging.com/amf_gateway/");
			var responder:Responder = new Responder(onResult, onResult);
			//var params:Object = new Object();
			//params.arg1 = "all";
			//params.arg2 = "all23";
			rs.call("work_service.get_medium_types", responder, "all", "123");
			// Edit
			//rs.call("Test.objectTest", responder, params);
		}
 
		private function onResult(result:Object):void
		{
			Debug(result);
			
			//projGroup.count = 15
			
			// ArrayTest()
			
			
			// ObjectTest()
			/*
			Debug(result.arrTest.hello)
			Debug(result.hello_world)*/
		}
 /*
		private function onFault(fault:Object):void
		{
			trace("FAIL")
			Debug(fault);
		}
	*/	
		////////////////////////////////////////////////////////
		// DEBUG
		////////////////////////////////////////////////////////
		
		private function Debug(obj):void
		{
			trace(obj)
			MonsterDebugger.trace(this, obj);
		}
	}
}