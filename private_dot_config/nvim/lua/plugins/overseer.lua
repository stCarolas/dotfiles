return {
  'stevearc/overseer.nvim',
  config = function ()
    require('overseer').setup()
    vim.api.nvim_set_keymap('','<F4>','<cmd>:OverseerOpen<cr>', {})
    vim.api.nvim_set_keymap('','<F5>','<cmd>:OverseerRun<cr>', {})
  end,
  opts = {},
}
