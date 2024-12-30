hs = hs
hs.loadSpoon("AClock")

hs.hotkey.bind({ "cmd", "alt" }, "C", function()
	spoon.AClock:toggleShow()
end)

hs.hotkey.bind({ "ctrl", "alt" }, "R", function()
	hs.reload()
end)

hs.alert.show("config loaded")
