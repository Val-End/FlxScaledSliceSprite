package tracedinpurple.ui;

import flixel.addons.display.FlxSliceSprite;
import flixel.math.FlxRect;
import flixel.FlxG;
import flixel.graphics.FlxGraphic;
import openfl.display.BitmapData;
import openfl.geom.Matrix;

/**
 * Small extension to FlxSliceSprite.
 * Simply allows you to scale the Texture you want to slice instead of loading a *bigger* version of said texture.
 * Despite having a very niche use it works great if you're working with a GUI/UI scale (Minecraft for example)
 */
class FlxScaledSliceSprite extends FlxSliceSprite 
{
    /**
        @param asset The FlxGraphic you want to slice
        @param baseSliceRect Rectangle that defines the slice grid
        @param scaleMult A multiplier which will scale your FlxGraphic
        @param width The width of your slice object
        @param height The height of your slice object
    **/
    public function new(asset:FlxGraphic, baseSliceRect:FlxRect, scaleMult:Int = 1, width:Float = -1, height:Float = -1) 
    {
        // Load the original bitmap/graphic
        var rawGraphic = FlxG.bitmap.add(asset);
        var originalBitmap = rawGraphic.bitmap;

        var scaledBitmap = new BitmapData(originalBitmap.width * scaleMult, originalBitmap.height * scaleMult, true, 0x0);
        var matrix = new Matrix(scaleMult, 0, 0, scaleMult); // it works so i won't touch it lol
        scaledBitmap.draw(originalBitmap, matrix);

        // Add the upscaled bitmap to the cache
        var scaledGraphic = FlxG.bitmap.add(scaledBitmap);

        // Scale the slice rect accordingly
        var scaledSliceRect = new FlxRect(
            baseSliceRect.x * scaleMult,
            baseSliceRect.y * scaleMult,
            baseSliceRect.width * scaleMult,
            baseSliceRect.height * scaleMult
        );

        // If no width/height are provided, use native scaled size
        if (width <= 0) width = scaledBitmap.width;
        if (height <= 0) height = scaledBitmap.height;

        super(scaledGraphic, scaledSliceRect, width, height);
    }
    /**
        Quick and Easy *(Lazy)* Function to stretch all Elements of the Sprite
    **/
    public function stretchAll():Void
    {
        stretchLeft = stretchTop = stretchRight = stretchBottom = stretchCenter = true;
    }
}
