local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("form", {
        ls.text_node("<form class=\""),
		ls.insert_node(1,""),
		ls.text_node("\">"),
ls.text_node("< action=\""),
		ls.insert_node(2,"#"),
		ls.text_node("\">"),
ls.text_node("< method=\""),
		ls.insert_node(3,"GET"),
		ls.text_node("\">"),
        ls.text_node({"","    "}),  -- New line with a tab for indentation
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the form
        ls.text_node({"","</form>"}),  -- New line and closing div tag
    }),
})
