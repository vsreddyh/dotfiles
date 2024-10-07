local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("a", {
        ls.text_node("<a class=\""),
		ls.insert_node(1,""),
		ls.text_node("\" href=\""),
		ls.insert_node(2,"#"),
		ls.text_node("\" target=\""),
		ls.insert_node(3,""),
		ls.text_node("\">"),
        ls.text_node({"","    "}),  -- New line with a tab for indentation
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the div
        ls.text_node({"","</a>"}),  -- New line and closing div tag
    }),
})
