package
{
	import flash.geom.Point;

	public class RandomFactory
	{
		public function RandomFactory()
		{
//			trace(getDistance(new Point(1,3), new Point(1,5));
		}
		
		public static function getRandomPoint(startX:int,endX:int,startY:int,endY:int):Point {
			return new Point(getRandomNumber(startX, endX),getRandomNumber(startY, endY));
		}
		
		public static function getRandomPointList(num:int,basePoint:Point):Array{
			var arr:Array = new Array();
			while (arr.length<num){
				checkArray(arr);
			}
			return arr;
		}
		
		public static function checkArray(arr:Array):Array{
			var p:Point = getRandomPoint(0,500,0,500);
			var flag:Boolean = true;
			for each (var m:Point in arr){
				if (checkRepeat(p,m,10)){
					flag = false;
					break;
				}
			}
			if (flag)
				arr.push(p);
			return arr;
		}
		
		private static function  getDistance(p1:Point, p2:Point):Number{
			return Math.sqrt((p2.y-p1.y)*(p2.y-p1.y)+(p2.x-p1.x)*(p2.x-p1.x));
		}
		
		public static function getRandomNumber(start:int, end:int):int{
			return Math.round(Math.random()*(end-start))+start;
		}
		
		private static function checkRepeat(p1:Point, p2:Point, radius:int):Boolean{
			return getDistance(p1,p2)<radius;
		}
	}
}