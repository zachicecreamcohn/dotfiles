local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s(
		"class",
		fmt(
			[[
        class {}:
            def __init__(self, {}):
                {}
        ]],
			{ i(1, "ClassName"), i(2, "args"), i(3, "## constructor code") }
		)
	),
}
