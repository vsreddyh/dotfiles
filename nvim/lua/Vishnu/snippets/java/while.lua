local ls = require("luasnip")

-- Define Java snippets
ls.add_snippets("java", {
    ls.snippet("while", {
        ls.text_node("while("),
        ls.insert_node(1, ""),
        ls.text_node("){"),
        ls.text_node({"", "\t"}),  -- New line with a tab for indentation
        ls.insert_node(0, "//Here"),  -- Default text inside the loop
        ls.text_node({"", "}"}),  -- Close the for loop with a new line
    }),
})
