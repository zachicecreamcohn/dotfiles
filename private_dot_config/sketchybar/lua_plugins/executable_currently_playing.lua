local function execute_shell_command(cmd)
	local handle = io.popen(cmd)
	if not handle then
		return nil
	end
	local output = handle:read("*a")
	handle:close()
	return (output or ""):gsub("%s+$", "")
end

local function get_now_playing_from_app(app_name)
	local applescript = string.format(
		'tell application "%s" to if it is running and player state is playing then return name of current track & " – " & artist of current track',
		app_name
	)
	return execute_shell_command("osascript -e " .. string.format("%q", applescript))
end
local icons = {
	["Music"] = os.getenv("CONFIG_DIR") .. "/icons/Music.png",
}
local current_app = nil
local label = nil

local music_label = get_now_playing_from_app("Music")
if music_label then
	current_app = "Music"
	label = music_label
end

if label and #label > 0 and current_app then
	local icon_path = icons[current_app] or ""
	if #label > 30 then
		label = string.sub(label, 1, 27) .. "..."
	end
	os.execute(
		"sketchybar --set "
			.. os.getenv("NAME")
			.. ' icon="" icon.background.image="'
			.. icon_path
			.. '" icon.background.image.scale=0.15 icon.background.corner_radius=0 icon.background.drawing=on label="'
			.. label
			.. '"'
	)
else
	os.execute(
		"sketchybar --set "
			.. os.getenv("NAME")
			.. ' icon="" icon.background.image="" icon.background.drawing=off icon.padding_left=8 label=""'
	)
end
