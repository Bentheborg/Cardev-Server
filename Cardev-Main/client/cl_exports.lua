
local a
local function b(c, d, e, f)
	if f == nil then
		f = function()
		end
	end
	if a then
		SendNUIMessage({
			act = "close_prompt"
		})
		while a do
			Wait(0)
		end
	end
	SendNUIMessage({
		act = "open_prompt",
		type = e,
		title = c,
		text = tostring(d)
	})
	SetNuiFocus(true)
	a = f
end
RegisterNUICallback("prompt", function(g, f)
	if g.act == "close" then
		SetNuiFocus(false)
		if a then
			a(g.result)
			a = nil
		end
	end
end)
function clientPrompt(c, d, f)
	b(c, d, "client", f)
end

function copyToClipboard(i)
	SendNUIMessage({
		act = "copy_clipboard",
		text = tostring(i)
	})
end