local ls = require("luasnip")

-- Define Java snippets
ls.add_snippets("java", {
    ls.snippet("for", {
        ls.text_node("for("),
        ls.insert_node(1, "int i=0"),
        ls.text_node(";i<"),
        ls.insert_node(2, ""),
        ls.text_node(";"),
        ls.insert_node(3, "i"),
        ls.text_node("++){"),
        ls.text_node({"", "\t"}),  -- New line with a tab for indentation
        ls.insert_node(0, "//Here"),  -- Default text inside the loop
        ls.text_node({"", "}"}),  -- Close the for loop with a new line
    }),
})
