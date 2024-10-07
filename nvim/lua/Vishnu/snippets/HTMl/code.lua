local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("code", {
        ls.text_node("<code class=\""),
		ls.insert_node(1,""),
		ls.text_node("\">"),
        ls.text_node({"","    "}),  -- New line with a tab for indentation
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the code
        ls.text_node({"","</code>"}),  -- New line and closing div tag
    }),
})

