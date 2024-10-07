local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("<>", {
        ls.text_node("<>"),
		ls.insert_node(0,""),
		ls.text_node("</>"),
    }),
})

