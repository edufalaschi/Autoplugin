------Autoinstall plugin
-------------------Extra-----------

color.loadpalette() -- Load Defaults colors
back = image.load("resources/back.png")

while true do
	buttons.read()
	if back then back:blit(0,0) end
	
	screen.print(10,20,"Update Adrenaline with one click",1,color.red)
	screen.print(25,80,"-> Update Adrenaline 6.3 by TheFl0w",1,color.green)
	screen.print(25,420,"Press CROSS to update Adrenaline",1,color.white,color.blue)
       screen.print(25,440,"Press SQUARE to return to the main menu",1,color.white,color.blue)
	screen.print(15,500,"Press START to exit.",1,color.white,color.red)

	screen.flip() -- Show Buff

	if buttons.cross then
		files.extract("resources/adrenaline.zip","ux0:app/PSPEMUCFW/sce_module")
		os.message("Your PSVita will restart...\n\n Adrenaline has been update",0)
		os.delay(2500)
	buttons.homepopup(1)
	power.restart()
end

if buttons.square then
dofile("resources/autoplugin.lua")
end

	if buttons.released.start then break end -- Exit
end