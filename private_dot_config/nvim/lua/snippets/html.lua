local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s(
		"doc",
		fmt(
			[[
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{}</title>
</head>
<body>
    {}
</body>
</html>
            ]],
			{ i(1, "Document"), i(2, "<h1>Hello, world!</h1>") }
		)
	),
	s(
		"a",
		fmt(
			[[
<a href="{}">{}</a>
            ]],
			{ i(1, "#"), i(2, "Link") }
		)
	),
}
