local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
	ls.snippet("heading", {
		ls.text_node("<h"),
		ls.insert_node(1, "x"),
		ls.text_node({ ">", "", "    " }),
		ls.insert_node(0, "// Here"), -- Placeholder content inside the div
		ls.text_node({ "", "</h" }),
		ls.insert_node(1, "x"),
		ls.text_node(">"), -- New line and closing div tag
	}),
})
