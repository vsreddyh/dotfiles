local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("button", {
        ls.text_node("<button class=\""),
		ls.insert_node(1,""),
		ls.text_node("\">"),
ls.text_node("<button name=\""),
		ls.insert_node(2,""),
		ls.text_node("\">"),
ls.text_node("<button value=\""),
		ls.insert_node(3,""),
		ls.text_node("\">"),
ls.text_node("<button type=\""),
		ls.insert_node(4,"button"),
		ls.text_node("\">"),
        ls.text_node({"","    "}),  -- New line with a tab for indentation
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the View
        ls.text_node({"","</button>"}),  -- New line and closing div tag
    }),
})
