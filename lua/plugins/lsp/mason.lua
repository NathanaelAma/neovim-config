return {
  "williamboman/mason.nvim",
  cmd = { "Mason", "MasonInstall", "MasonInstallAll", "MasonUpdate" },
  lazy = false,
  opts = {
  PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
    ensure_installed = {
      "lua-language-server",
      "stylua",
      -- Web Development
      "html-lsp",
      "css-lsp",
      "prettier",
      "solargraph",
      "rubocop",
      "rufo",
      "typescript-language-server",
      "yaml-language-server",
      "json-lsp",
      -- Mobile Development
    },
  },
}
