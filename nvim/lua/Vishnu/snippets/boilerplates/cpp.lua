vim.api.nvim_create_autocmd("BufNewFile", {
	pattern = "*.cpp", -- Trigger for new C++ files
	callback = function()
		-- Get the file name without the extension
		local file_path = vim.api.nvim_buf_get_name(0)
		local file_name = vim.fn.fnamemodify(file_path, ":t:r") -- Extract file name without extension

		-- C++ boilerplate with the dynamic class name
		local boilerplate = {
			"#include <iostream>",
			"using namespace std;",
			"",
			"int main(){",
			"     ",
			"    return 0;",
			"}",
		}

		-- Insert the boilerplate into the new file
		vim.api.nvim_buf_set_lines(0, 0, -1, false, boilerplate)

		-- Set the cursor inside the main method
		vim.api.nvim_win_set_cursor(0, { 4, 5 }) -- Line 14 (inside main), column 6
	end,
})
