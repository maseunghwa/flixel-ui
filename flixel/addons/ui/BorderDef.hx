package flixel.addons.ui;
import flixel.text.FlxText;

class BorderDef
{
	public var style:FlxTextBorderStyle; 
	public var color:Int; 
	public var size:Float;
	public var quality:Float;
	
	public function new(Style:FlxTextBorderStyle, Color:Int, Size:Float=1, Quality:Float=1) {
		style = Style;
		color = Color;
		size = Size;
		quality = Quality;
	}
	
	public function clone():BorderDef
	{
		return new BorderDef(style, color, size, quality);
	}
	
	public function apply(f:FlxText):FlxText
	{
		f.setBorderStyle(style, color, size, quality);
		return f;
	}
}