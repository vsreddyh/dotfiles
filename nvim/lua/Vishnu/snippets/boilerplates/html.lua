vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.html",  -- Trigger for new HTML files
  callback = function()
    local boilerplate = {
      "<!DOCTYPE html>",
      "<html lang=\"en\">",
      "<head>",
      "    <meta charset=\"UTF-8\">",
      "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">",
      "    <title>Document</title>",
	  "    <link rel=\"stylesheet\" href=\"#\">",
      "</head>",
      "<body>",
      "    ",
      "</body>",
      "</html>"
    }

    -- Insert the boilerplate into the new file
    vim.api.nvim_buf_set_lines(0, 0, -1, false, boilerplate)
	vim.api.nvim_win_set_cursor(0, {10, 4})
  end
})

