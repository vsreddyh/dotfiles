local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("br", {
        ls.text_node({"<br/>",""}),
    }),
})
