## Introduction
	fortunecow_awesome is a widget which shows fortune cookies quotes...stated by a wise scowleton. 
	Get it? Cow + Skeleton? Huehuehue
## Installation
	+ Clone this repository into your `~/.config/awesome/` folder
	+ Add these lines into your `rc.lua` file
		```
		-- At the beginning of the file
		local fortunecow = require("fortunecow_awesome/fortunecow")
		-- Init your widget, basically anywhere
		mycow = fortunecow()
		```
	+ Don't forget to put `mycow` into your layout box
