# FlxScaledSliceSprite

<p align="center">
    <img src="https://raw.githubusercontent.com/TracedInPurple/flxscaledslicesprite/main/art/banner.png" alt="FlxScaledSliceSprite Banner" />
</p>

<br>

[![License](https://img.shields.io/github/license/TracedInPurple/FlxScaledSliceSprite?style=for-the-badge)](LICENSE) [![Stars](https://img.shields.io/github/stars/TracedInPurple/FlxScaledSliceSprite?style=for-the-badge)](https://github.com/TracedInPurple/FlxScaledSliceSprite/stargazers) [![Issues](https://img.shields.io/github/issues/TracedInPurple/FlxScaledSliceSprite?style=for-the-badge)](https://github.com/TracedInPurple/FlxScaledSliceSprite/issues)

[![YouTube](https://img.shields.io/badge/YouTube-TracedInPurple-FF0000?logo=youtube&style=for-the-badge)](https://www.youtube.com/@TracedInPurple) [![Ko-fi](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-Ko--fi-FF5E5B?logo=ko-fi&logoColor=white&style=for-the-badge)](https://ko-fi.com/tracedinpurple)

---

## What is FlxScaledSliceSprite?

`FlxScaledSliceSprite` is a small but powerful extension of the [`FlxSliceSprite`](https://api.haxeflixel.com/flixel/addons/display/FlxSliceSprite.html) class from HaxeFlixel.

It adds support for **scaling the source texture**  *before* slicing, which is incredibly useful for UI elements that need to adapt to different resolutions or scale settings.

### Use Case

Perfect for games with a UI scale setting (e.g., **Minecraft-style**), where you want your interface to scale *cleanly* without manually creating higher-res versions of every 9-slice graphic.

<p align="center">
    <img src="https://raw.githubusercontent.com/TracedInPurple/flxscaledslicesprite/main/art/example.png" alt="FlxScaledSliceSprite Example" />
</p>

---

## Features

- Scales the original `FlxGraphic` before slicing it

- Automatically adjusts the slice rectangle

- Supports custom dimensions or auto-sizing

- Ideal for scalable GUIs or pixel-perfect UIs

- Built by a HaxeFlixel user for HaxeFlixel users :3

---

## Installation

```bash
haxelib install flxscaledslicesprite
```

Or if using GitHub:

```bash
haxelib git flxscaledslicesprite https://github.com/TracedInPurple/FlxScaledSliceSprite.git
```

---

## Usage

```haxe

import tracedinpurple.ui.FlxScaledSliceSprite;
  

// Load your graphic and slice settings
var asset = "assets/ui/box";
var slice = new FlxRect(3,  3,  10,  10);
  

// Create the scaled slice sprite
var scaledSprite = new FlxScaledSliceSprite(asset, slice, 2);
add(scaledSprite);
```

Need to stretch all borders?  

```haxe
scaledSprite.stretchAll();
```

---

## Contributing

Pull requests are welcome!

Found a bug or want to suggest an enhancement? Open an [issue](https://github.com/TracedInPurple/FlxScaledSliceSprite/issues).

---

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

---

## Font

Extremely cool font created by Qrafty | Check their [Ko-Fi](https://ko-fi.com/post/qraftium-FONT-N4N81DJKV5) here!

---