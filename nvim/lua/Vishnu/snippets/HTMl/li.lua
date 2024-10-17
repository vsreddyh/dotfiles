local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("li", {
        ls.text_node("<li class=\""),
		ls.insert_node(1,""),
		ls.text_node("\">"),
        ls.insert_node(0,"// Here"),  -- Placehlider content inside the ol
        ls.text_node("</li>"),  -- New line and closing div tag
    }),
})
