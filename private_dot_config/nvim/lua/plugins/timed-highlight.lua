return {
    "sahlte/timed-highlight.nvim", config = function ()
      require("timed-highlight").setup({
        highlight_timeout_ms = 2000
      })
    end
}
