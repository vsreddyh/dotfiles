local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("script", {
        ls.text_node("<script>"),
        ls.text_node({"","    "}),  -- New line with a tab for indentation
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the script
        ls.text_node({"","</script>"}),  -- New line and closing div tag
    }),
})

