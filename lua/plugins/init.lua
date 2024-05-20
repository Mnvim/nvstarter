return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },
  --
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "bash-language-server",
        "python-lsp-server",
        "biome",
        "html-lsp",
        "css-lsp",
        "json-lsp",
        "prettier",
        "clangd",
        "clang-format",
        "codelldb",
        "mypy",
        "ruff-lsp",
        "black",
        "pyright",
        "pylint",
        "debugpy",
        "rust-analyzer",
        "tailwindcss-language-server",
        "typescript-language-server",
      },
    },
  },
  --#region
  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    ft = { "python" },
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  --#region
  {
    "andymass/vim-matchup",
    event = "BufRead",
    config = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  --#region
  {
    "NvChad/nvim-colorizer.lua",
    enabled = false,
  },
  --#region
  -- nvim-highlight-colors
  {
    "brenoprata10/nvim-highlight-colors",
    event = "VeryLazy",
    config = function()
      require("nvim-highlight-colors").setup {
        enabled_tailwind = true,
        render = "virtual",
        virtual_symbol = "■",
        enable_named_colors = true,
        custom_colors = {
          { label = "%-%-theme%-primary%-color", color = "#0f1219" },
          { label = "%-%-theme%-secondary%-color", color = "#5a5d64" },
        },
      }
    end,
  },
  --#region
  {
    "jellydn/quick-code-runner.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
      debug = true,
    },
    cmd = { "QuickCodeRunner", "QuickCodePad" },
    keys = {
      {
        "<leader>cr",
        ":QuickCodeRunner<CR>",
        desc = "Quick Code Runner",
        mode = "v",
      },
      {
        "<leader>cp",
        ":QuickCodePad<CR>",
        desc = "Quick Code Pad",
      },
    },
  },
  --
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "bash",
        "python",
        "c",
        "css",
        "gleam",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "http",
        "javascript",
        "json",
        "markdown",
        "markdown_inline",
        "rust",
        "scss",
        "toml",
        "tsx",
        "typescript",
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, _)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
}
