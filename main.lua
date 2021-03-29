-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

local composer = require( "composer" )

local playerStartingPosition = display.actualContentWidth/display.actualContentHeight < 1.6 and display.safeScreenOriginX + 30 or display.contentWidth-750

composer.setVariable( "playerStartingPosition", playerStartingPosition )

display.setStatusBar(display.HiddenStatusBar);

function onSystemEvent( event )
    if event.type == "applicationResume" then
        display.setStatusBar(display.HiddenStatusBar);
    end
end
Runtime:addEventListener("system", onSystemEvent)

composer.gotoScene( "menu" )