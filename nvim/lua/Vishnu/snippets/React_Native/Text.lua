local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("jsx", {
    ls.snippet("Text", {
        ls.text_node("<Text className=\""),
		ls.insert_node(1,""),
		ls.text_node("\">"),
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the Text
        ls.text_node({"","</Text>"}),  -- New line and closing div tag
    }),
})
