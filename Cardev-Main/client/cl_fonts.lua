
local a = {
	"akrobat"
}
local b = {
	["Akrobat-Black"] = 0,
	["Akrobat-Bold"] = 0,
	["Akrobat-ExtraBold"] = 0,
	["Akrobat-ExtraLight"] = 0,
	["Akrobat-Light"] = 0,
	["Akrobat-Regular"] = 0,
	["Akrobat-SemiBold"] = 0,
	["Akrobat-Thin"] = 0
}
CreateThread(function()
	for c, d in pairs(a) do
		RegisterFontFile(d)
	end
	for e in pairs(b) do
		b[e] = RegisterFontId(e)
	end
end)
function getFontId(e)
	return b[e] or 0
end