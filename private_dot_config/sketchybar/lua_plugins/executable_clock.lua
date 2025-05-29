-- Clock plugin for SketchyBar
-- This script is called directly by sketchybar

-- Get current date and time
local handle = io.popen("date '+%m/%d %I:%M %p'")
local date_time = handle:read("*a"):gsub("%s+$", "")
handle:close()

-- Update the clock item using sketchybar CLI
os.execute('sketchybar --set "$NAME" label="' .. date_time .. '"')
