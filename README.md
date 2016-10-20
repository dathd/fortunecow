## Introduction
	fortunecow_awesome is a widget which shows fortune cookies quotes...stated by a wise scowleton. 
	Get it? Cow + Skeleton? Huehuehue
<<<<<<< HEAD
=======
## Requirement
	+ `fortune` and `cowsay` packages from the official repository.
	+ `DroidSansMono` font.
>>>>>>> 323181125e8347cfedaa95fa93e6eecc497df547
## Installation
	+ Clone this repository into your `~/.config/awesome/` folder
	+ Add these lines into your `rc.lua` file
```lua
		-- At the beginning of the file
<<<<<<< HEAD
		local fortunecow = require("fortunecow/fortunecow")
=======
		local fortunecow = require("fortunecow_awesome/fortunecow")
>>>>>>> 323181125e8347cfedaa95fa93e6eecc497df547
		...
		-- Init your widget, basically anywhere
		mycow = fortunecow()
```
	+ Don't forget to put `mycow` into your layout box
## Screenshot
![Screenshot](https://github.com/dathd/fortunecow_awesome/blob/master/screenshot.jpg)
