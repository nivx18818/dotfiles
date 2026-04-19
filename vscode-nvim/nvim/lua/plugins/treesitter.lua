return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
      vim.env.CC = "gcc"

      local parsers = {
        "bash",
        "cpp",
        "lua",
        "luadoc",
        "markdown",
        "markdown_inline",
        "query",
        "vim",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "python",
        "json",
        "jsdoc",
        "tsx",
      }

      local treesitter = require("nvim-treesitter")

      treesitter.setup({
        install_dir = vim.fn.stdpath("data") .. "/site",
      })

      treesitter.install(parsers)

      vim.api.nvim_create_autocmd("FileType", {
        callback = function(args)
          pcall(vim.treesitter.start, args.buf)
        end,
      })
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    branch = "main",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      select = {
        lookahead = true,
      },
    },
    config = function(_, opts)
      require("nvim-treesitter-textobjects").setup(opts)

      local map = vim.keymap.set
      local textobjects_select = require("nvim-treesitter-textobjects.select")

      map({ "x", "o" }, "af", function()
        textobjects_select.select_textobject("@function.outer", "textobjects")
      end)
      map({ "x", "o" }, "if", function()
        textobjects_select.select_textobject("@function.inner", "textobjects")
      end)
      map({ "x", "o" }, "ac", function()
        textobjects_select.select_textobject("@class.outer", "textobjects")
      end)
      map({ "x", "o" }, "ic", function()
        textobjects_select.select_textobject("@class.inner", "textobjects")
      end)
    end,
  },
}
