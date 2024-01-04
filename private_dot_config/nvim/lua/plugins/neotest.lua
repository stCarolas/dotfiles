return {
  {'rcasia/neotest-java'},
  {
    "nvim-neotest/neotest",
    config = function ()
      require("neotest").setup({
        adapters = {
          require("neotest-java")({
              ignore_wrapper = true, -- whether to ignore maven/gradle wrapper
          })

        },
        consumers = {
          overseer = require("neotest.consumers.overseer"),
        },
      })
      vim.api.nvim_set_keymap('','<leader>t','<cmd>lua require("neotest").run.run()<cr>', {})
      vim.api.nvim_set_keymap('','<F3>','<cmd>lua require("neotest").output.open()<cr>', {})
    end
  }
}
