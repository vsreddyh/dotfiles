vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.java",  -- Trigger for new Java files
  callback = function()
    -- Get the file name without the extension
    local file_path = vim.api.nvim_buf_get_name(0)
    local file_name = vim.fn.fnamemodify(file_path, ":t:r")  -- Extract file name without extension

    -- Java boilerplate with the dynamic class name
    local boilerplate = {
      "public class " .. file_name .. " {",
      "    public static void main(String[] args) {",
      "        ",
      "    }",
      "}"
    }

    -- Insert the boilerplate into the new file
    vim.api.nvim_buf_set_lines(0, 0, -1, false, boilerplate)

    -- Set the cursor inside the main method
    vim.api.nvim_win_set_cursor(0, {3, 9})  -- Line 3 (inside main method), column 39 (after the opening brace)
  end
})

