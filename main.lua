-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )

local playerStartingPosition = display.actualContentWidth/display.actualContentHeight < 1.6 and display.safeScreenOriginX + 30 or display.contentWidth-750

composer.setVariable( "playerStartingPosition", playerStartingPosition )

display.setStatusBar(display.HiddenStatusBar);

system.setIdleTimer( false )

composer.gotoScene( "menu" )
