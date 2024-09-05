return {
  {
    "github/copilot.vim",
    lazy = false,
    config = function() -- Mapping tab is already used by NvChad
      vim.g.copilot_no_tab_map = true
      vim.g.copilot_assume_mapped = true
      vim.g.copilot_tab_fallback = ""
      -- The mapping is set to other key, see custom/lua/mappings
      -- or run <leader>ch to see copilot mapping section
    end,
  },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre' -- uncomment for format on save
    enabled = false,
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "prettier",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
      },
    },
  },
  {
    "kyazdani42/nvim-tree.lua",
    lazy = true,
    event = "BufRead",
    cmd = { "NvimTree", "NvimTreeToggle", "NvimTreeFocus", "NvimTreeClose" },
    dependencies = "kyazdani42/nvim-web-devicons",
    config = function()
      require "configs.user.nvimtree"
    end,
  },
  {
    "nvim-lualine/lualine.nvim",
    event = { "BufRead", "BufNewFile", "InsertEnter" },
    config = function()
      require "configs.user.lualine"
    end,
  },
  {
    "jayp0521/mason-null-ls.nvim",
    lazy = true,
    dependencies = {
      "nvimtools/none-ls.nvim",
      dependencies = {
        "nvimtools/none-ls-extras.nvim",
        lazy = true,
      },
      config = function()
        require "configs.user.null_ls"
      end,
    },
    event = "InsertEnter",
    opts = function()
      require "configs.user.mason-null-ls"
    end,
  },
  {
    "mrjones2014/smart-splits.nvim",
    event = "BufRead",
    config = function()
      require "configs.user.smartsplit"
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "BufRead",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  {
    "akinsho/toggleterm.nvim",
    cmd = "ToggleTerm",
    event = "BufRead",
    config = function()
      require "configs.user.toggleterm"
    end,
  },
}
