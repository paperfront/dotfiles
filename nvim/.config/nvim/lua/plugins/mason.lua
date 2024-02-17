return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        mason = false,
        cmd = {
          "/usr/local/opt/llvm/bin/clangd",
          "--background-index",
          "--clang-tidy",
          "--enable-config",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        },
      },
    },
  },
}
