local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

local function test_file_only()
	local filename = vim.api.nvim_buf_get_name(0)
	return filename:match("%.test%.ts$") or filename:match("%.test%.js$")
end

return {
	s(
		"it",
		fmt(
			[[
it('{}', () => {{
  {}
}});
]],
			{ i(1, "should do something"), i(2, "// test code") }
		),
		{ condition = test_file_only }
	),
	s(
		"desc",
		fmt(
			[[
describe('{}', () => {{
    it('{}', () => {{
        {}
    }});
}});
]],
			{ i(1, "Test suite description"), i(2, "should do something"), i(3, "// test code") }
		),
		{ condition = test_file_only }
	),
}
