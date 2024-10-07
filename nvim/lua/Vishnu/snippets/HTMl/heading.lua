local ls = require("luasnip")

-- Define HTML snippets
ls.add_snippets("html", {
    ls.snippet("h1", {
        ls.text_node({"<h1>","","    "}),
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the div
        ls.text_node({"","</h1>"}),  -- New line and closing div tag
    }),
	ls.snippet("h2", {
        ls.text_node({"<h2>","","    "}),
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the div
        ls.text_node({"","</h2>"}),  -- New line and closing div tag
    }),
   ls.snippet("h3", {
        ls.text_node({"<h3>","","    "}),
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the div
        ls.text_node({"","</h3>"}),  -- New line and closing div tag
    }),
   ls.snippet("h4", {
        ls.text_node({"<h4>","","    "}),
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the div
        ls.text_node({"","</h4>"}),  -- New line and closing div tag
    }),
   ls.snippet("h5", {
        ls.text_node({"<h5>","","    "}),
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the div
        ls.text_node({"","</h5>"}),  -- New line and closing div tag
    }),
   ls.snippet("h6", {
        ls.text_node({"<h6>","","    "}),
        ls.insert_node(0,"// Here"),  -- Placeholder content inside the div
        ls.text_node({"","</h6>"}),  -- New line and closing div tag
    }),

})

