# Magenta.nvim with Lua Plugins for SketchyBar

This configuration uses Lua instead of Bash for SketchyBar plugins, providing a more modern and maintainable approach to customizing your macOS status bar.

## Prerequisites

1. Install SketchyBar:
```bash
brew tap FelixKratz/formulae
brew install sketchybar
```

2. Make sure Lua is installed (comes with macOS, but you can install the latest version):
```bash
brew install lua
```

## Installation

1. Clone this repository to your SketchyBar configuration directory:
```bash
git clone https://github.com/your-username/magenta.nvim.git ~/.config/sketchybar
```

2. Make sure all Lua plugins are in place:
```bash
ls -la ~/.config/sketchybar/lua_plugins
```

3. Start SketchyBar with the configuration:
```bash
sketchybar --config ~/.config/sketchybar/sketchybarrc
```

4. (Optional) To have SketchyBar start automatically:
```bash
brew services start sketchybar
```

## Plugin Structure

- `sketchybarrc`: Main shell configuration file that calls Lua scripts
- `lua_plugins/`: Directory containing all Lua plugin scripts
  - `battery.lua`: Battery status monitoring
  - `clock.lua`: Date and time display
  - `volume.lua`: Volume level monitoring
  - `network.lua`: Network upload/download speed
  - `aerospace.lua`: Workspace management

## How It Works

This configuration keeps the main sketchybarrc file as a shell script, but each plugin is implemented in Lua instead of Bash. The main sketchybarrc calls the Lua scripts using the `lua` command, passing the necessary environment variables.

## Advantages of Lua Plugins

- More organized and readable code
- Better string handling and data processing
- Easier maintenance and extensibility
- Avoids Bash pitfalls and syntax quirks
- Consistent error handling

## Customization

You can customize the bar by editing the `sketchybarrc` file and any of the plugin scripts in the `lua_plugins` directory.

## Troubleshooting

- If you encounter issues, try running SketchyBar directly from the command line to see error messages:
```bash
sketchybar --config ~/.config/sketchybar/sketchybarrc
```

- Check Lua script syntax by running them directly:
```bash
lua ~/.config/sketchybar/lua_plugins/battery.lua
```

- Make sure Lua scripts are functioning correctly:
```bash
chmod +x ~/.config/sketchybar/lua_plugins/*.lua
```