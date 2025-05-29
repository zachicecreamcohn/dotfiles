-- Battery status plugin for SketchyBar
-- This script is called directly by sketchybar

-- Get battery percentage and status from pmset
local handle = io.popen("pmset -g batt")
local pmset_output = handle:read("*a")
handle:close()

-- Extract percentage
local percentage = pmset_output:match("(%d+)%%")
local charging = pmset_output:match("AC Power")

if not percentage then
	os.exit(0)
end

-- Convert to number
local percent_num = tonumber(percentage)

-- Set icon based on battery percentage
local icon = ""
if percent_num >= 90 then
	icon = ""
elseif percent_num >= 60 then
	icon = ""
elseif percent_num >= 30 then
	icon = ""
elseif percent_num >= 10 then
	icon = ""
else
	icon = ""
end

-- Override icon if charging
if charging then
	icon = "󱐋"
end

-- Update the battery item using sketchybar CLI
os.execute('sketchybar --set "$NAME" icon="' .. icon .. '" label="' .. percentage .. '%"')
