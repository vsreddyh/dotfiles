return{
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		config=function()
			local harpoon = require("harpoon")
			vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
			vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

			vim.keymap.set("n", "<A-1>", function() harpoon:list():select(1) end)
			vim.keymap.set("n", "<A-2>", function() harpoon:list():select(2) end)
			vim.keymap.set("n", "<A-3>", function() harpoon:list():select(3) end)
			vim.keymap.set("n", "<A-4>", function() harpoon:list():select(4) end)

			-- Toggle previous & next buffers stored within Harpoon list
			vim.keymap.set("n", "<A-x>", function() harpoon:list():prev() end)
			vim.keymap.set("n", "<C-z>", function() harpoon:list():next() end)
		end
	}}