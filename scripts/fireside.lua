local bCAC = false

function onInit()
	for _,sName in pairs(Extension.getExtensions()) do
		if Extension.getExtensionInfo(sName).name == "Feature: Chat Aesthetics Configurator" then
			bCAC = true
			break
		end
	end
	-- Only load if Chat Aestheics Configuration is laoded
	if bCAC then
		-- Add custom themes and icons here. Make a call for each theme
		-- "Human Readable Name in settings", "appended identifier"
		DrowbeCAC.addIconTheme("Icon Example", "custom1")
		DrowbeCAC.addFontTheme("Font Example", "custom1")
		DrowbeCAC.addGMPortrait("Dungeon Master", "custom1")
	end
end