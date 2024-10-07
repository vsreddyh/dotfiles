return{{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
      local configs = require("nvim-treesitter.configs")

      configs.setup({
          ensure_installed = { "c", "python", "cpp", "java", "bash", "css", "csv", "gitignore", "http", "json", "json5", "kotlin", "markdown", "sql", "lua", "vim", "javascript", "typescript", "html" },
          sync_install = false,
          highlight = { enable = true },
          indent = { enable = true },
        })
    end
 }}
