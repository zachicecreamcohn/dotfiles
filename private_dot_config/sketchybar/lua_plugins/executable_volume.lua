-- Volume plugin for SketchyBar
-- This script is called directly by sketchybar

-- The SENDER and INFO environment variables are provided by sketchybar
local sender = os.getenv("SENDER")
local info = os.getenv("INFO")

-- Check if this is a volume_change event
if sender == "volume_change" then
	local volume = info
	local icon = ""

	-- Set icon based on volume level
	local volume_num = tonumber(volume)
	if volume_num >= 100 then
		icon = ""
	elseif volume_num >= 60 then
		icon = ""
	elseif volume_num >= 30 then
		icon = ""
	elseif volume_num >= 1 then
		icon = ""
	else
		icon = ""
	end

	-- Update the volume item using sketchybar CLI
	os.execute('sketchybar --set "$NAME" icon="' .. icon .. '" label="' .. volume .. '%"')
end
