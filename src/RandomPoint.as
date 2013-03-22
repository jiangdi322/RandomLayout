package
{
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.geom.Point;
	
	public class RandomPoint extends Sprite
	{
		public function RandomPoint()
		{
//			drawCircle(new Point(10,10));
//			for (var i:int=0; i<10; i++){
//				trace(RandomFactory.getRandomNumber(10,20));
//			}
//			trace(RandomFactory.getDistance(new Point(2,3), new Point(1,5)));
			
			var arr:Array = RandomFactory.getRandomPointList(10,null);
			for each(var p:Point in arr){
				drawCircle(p);
			}
		}
		
		private function drawCircle(p:Point, radius:int=10):void{
			var mc:MovieClip = new MovieClip();
			mc.graphics.lineStyle(1, 0xaaaaaa, 100);
			mc.graphics.beginFill(0xcccccc, 100);
			mc.graphics.drawCircle(p.x, p.y, radius);
			mc.graphics.endFill();
			this.addChild(mc);
		}
	}
}