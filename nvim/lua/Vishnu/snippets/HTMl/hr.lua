local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("hr", {
        ls.text_node({"<hr/>",""}),
    }),
})
