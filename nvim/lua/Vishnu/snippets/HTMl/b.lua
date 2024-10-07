local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("b", {
        ls.text_node("<b class=\""),
		ls.insert_node(1,""),
		ls.text_node("\">"),
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the p
        ls.text_node("</b>"),  -- New line and closing div tag
    }),
})
