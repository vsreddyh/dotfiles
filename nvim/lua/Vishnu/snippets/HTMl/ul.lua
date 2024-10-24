local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("ul", {
        ls.text_node("<ul class=\""),
		ls.insert_node(1,""),
		ls.text_node("\">"),
        ls.text_node({"","    "}),  -- New line with a tab for indentation
        ls.insert_node(0,"// Here"),  -- Placehulder content inside the ol
        ls.text_node({"","</ul>"}),  -- New line and closing div tag
    }),
})
