return {
  "Exafunction/windsurf.nvim",
  config = function()
      require("codeium").setup({
        virtual_text = {
          enabled = true,
          key_bindings = {
            accept = "<S-Tab>"
          }
        }
      })
  end,
}
