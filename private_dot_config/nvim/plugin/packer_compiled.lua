-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/vagrant/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/vagrant/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/vagrant/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/vagrant/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/vagrant/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\nÅ\2\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\3\rextended\1\nextra\2\nbasic\2\nextra\1\0\3\nabove\15<leader>cO\beol\15<leader>cA\nbelow\15<leader>co\ropleader\1\0\1\tline\14<leader>c\ftoggler\1\0\1\tline\15<leader>cc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nq\0\3\n\0\a\0\r6\3\0\0009\3\1\0039\3\2\3)\5\0\0B\3\2\0026\4\3\0009\4\4\4\18\b\3\0009\6\4\3'\t\5\0B\6\3\2'\a\6\0D\4\3\0\t^%a+\14%a+%.java\nmatch\vstring\22nvim_buf_get_name\bapi\bvimœ\4\1\0\19\0\19\2R3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\3\4\0019\4\5\0019\5\6\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\t\0004\r\6\0\18\14\3\0'\16\n\0B\14\2\2>\14\1\r\18\14\5\0\18\16\0\0004\17\0\0004\18\0\0B\14\4\2>\14\2\r\18\14\3\0005\16\v\0B\14\2\2>\14\3\r\18\14\4\0)\16\0\0B\14\2\2>\14\4\r\18\14\3\0005\16\f\0B\14\2\0?\14\0\0B\n\3\0?\n\1\0B\6\3\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\r\0004\r\3\0\18\14\3\0'\16\14\0B\14\2\0?\14\1\0B\n\3\0?\n\1\0B\6\3\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\15\0004\r\6\0\18\14\3\0005\16\16\0B\14\2\2>\14\1\r\18\14\4\0)\16\1\0B\14\2\2>\14\2\r\18\14\3\0005\16\17\0B\14\2\2>\14\3\r\18\14\4\0)\16\0\0B\14\2\2>\14\4\r\18\14\3\0005\16\18\0B\14\2\0?\14\0\0B\n\3\0?\n\1\0B\6\3\1K\0\1\0\1\3\0\0\5\6}\1\3\0\0\t() {\t    \1\3\0\0\n@Test\21public void test\ttest5private static final long serialVersionUID = 1L;\18serialversion\1\4\0\0\5\t    \6}\1\4\0\0\a {\t    \t    \18public class \nclass\tjava\17add_snippets\18function_node\16insert_node\14text_node\fsnippet\fluasnip\frequire\0\vÄÄ¿ô\4\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
  },
  ["cinnamon.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcinnamon\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/cinnamon.nvim",
    url = "https://github.com/declancm/cinnamon.nvim"
  },
  ["close-buffers.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18close_buffers\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/close-buffers.nvim",
    url = "https://github.com/kazhala/close-buffers.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["editorconfig.nvim"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/editorconfig.nvim",
    url = "https://github.com/gpanders/editorconfig.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["modes.nvim"] = {
    config = { "\27LJ\2\n¸\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ignore_filetypes\1\3\0\0\rNvimTree\20TelescopePrompt\vcolors\1\0\4\15set_number\2\15set_cursor\2\17line_opacity\4≥ÊÃô\3≥Êå˛\3\19set_cursorline\2\1\0\4\vdelete\f#c75c6a\vvisual\f#9745be\vinsert\f#40cc40\tcopy\f#f5c359\nsetup\nmodes\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\nó\5\0\0\6\0'\0,6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\1\3=\3\b\0025\3\30\0005\4\n\0005\5\t\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0=\5\25\0045\5\26\0=\5\27\0045\5\28\0=\5\29\4=\4\31\3=\3 \0025\3\"\0005\4!\0=\4#\3=\3$\2B\0\2\0016\0%\0'\2&\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\foptions\vstyles\1\0\0\1\0\1\rcomments\vitalic\vgroups\ball\1\0\0\31DiagnosticVirtualTextError\1\0\1\abg\bbg1\30DiagnosticVirtualTextHint\1\0\1\abg\bbg1\30DiagnosticVirtualTextInfo\1\0\1\abg\bbg1\30DiagnosticVirtualTextWarn\1\0\1\abg\bbg1\19DiagnosticHint\1\0\1\abg\bbg1\19DiagnosticInfo\1\0\1\abg\bbg1\19DiagnosticWarn\1\0\1\abg\bbg1\20DiagnosticError\1\0\1\abg\bbg1\16TSParameter\1\0\1\afg\18palette.white\tType\1\0\0\1\0\1\afg\17palette.cyan\nspecs\1\0\0\1\0\0\fdiag_bg\1\0\0\1\0\5\fwarning\bbg1\nerror\bbg1\nhints\bbg1\tinfo\bbg1\twarn\bbg1\nsetup\rnightfox\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire»\1\0\2\a\1\b\0\0156\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\0\0\tname\vsource\1\0\5\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\fluasnip\14[LuaSnip]\18latex_symbols\f[LaTeX]\tmenu\n%s %s\vformat\vstring\tkind˜\3\1\0\n\1\"\0?6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\r\4=\4\t\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\a)\t¸ˇB\a\2\2=\a\19\0069\a\14\0009\a\17\a)\t\4\0B\a\2\2=\a\20\0069\a\14\0009\a\21\aB\a\1\2=\a\22\0069\a\14\0009\a\23\aB\a\1\2=\a\24\0069\a\14\0009\a\25\a5\t\26\0B\a\2\2=\a\27\6B\4\2\2=\4\14\0035\4\29\0003\5\28\0=\5\30\4=\4\31\0039\4\b\0009\4 \0044\6\3\0005\a!\0>\a\1\6B\4\2\2=\4 \3B\1\2\1K\0\1\0\0¿\1\0\1\tname\rnvim_lsp\fsources\15formatting\vformat\1\0\0\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14lspconfig\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-nonicons"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nvim-nonicons",
    url = "https://github.com/yamatsum/nvim-nonicons"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n„\1\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\0\tshow\1\0\0\1\0\4\vfolder\2\bgit\2\17folder_arrow\2\tfile\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\tview\1\0\0\1\0\1\nwidth\3¨\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¿\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\1\17sync_install\1\1\3\0\0\tjava\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n´\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\rdefaults\1\0\0\18layout_config\rvertical\1\0\0\1\0\2\nwidth\4ÊÃô≥\6ÊÃπˇ\3\vheight\4Õô≥Ê\fÃô≥ˇ\3\1\0\1\fpreview\1\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n~\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\14auto_jump\1\0\4\17auto_preview\1\14auto_fold\1\15auto_close\1\14auto_open\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/vagrant/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire»\1\0\2\a\1\b\0\0156\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\0\0\tname\vsource\1\0\5\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\vbuffer\r[Buffer]\fluasnip\14[LuaSnip]\18latex_symbols\f[LaTeX]\tmenu\n%s %s\vformat\vstring\tkind˜\3\1\0\n\1\"\0?6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\r\4=\4\t\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\a)\t¸ˇB\a\2\2=\a\19\0069\a\14\0009\a\17\a)\t\4\0B\a\2\2=\a\20\0069\a\14\0009\a\21\aB\a\1\2=\a\22\0069\a\14\0009\a\23\aB\a\1\2=\a\24\0069\a\14\0009\a\25\a5\t\26\0B\a\2\2=\a\27\6B\4\2\2=\4\14\0035\4\29\0003\5\28\0=\5\30\4=\4\31\0039\4\b\0009\4 \0044\6\3\0005\a!\0>\a\1\6B\4\2\2=\4 \3B\1\2\1K\0\1\0\0¿\1\0\1\tname\rnvim_lsp\fsources\15formatting\vformat\1\0\0\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nq\0\3\n\0\a\0\r6\3\0\0009\3\1\0039\3\2\3)\5\0\0B\3\2\0026\4\3\0009\4\4\4\18\b\3\0009\6\4\3'\t\5\0B\6\3\2'\a\6\0D\4\3\0\t^%a+\14%a+%.java\nmatch\vstring\22nvim_buf_get_name\bapi\bvimœ\4\1\0\19\0\19\2R3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\3\4\0019\4\5\0019\5\6\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\t\0004\r\6\0\18\14\3\0'\16\n\0B\14\2\2>\14\1\r\18\14\5\0\18\16\0\0004\17\0\0004\18\0\0B\14\4\2>\14\2\r\18\14\3\0005\16\v\0B\14\2\2>\14\3\r\18\14\4\0)\16\0\0B\14\2\2>\14\4\r\18\14\3\0005\16\f\0B\14\2\0?\14\0\0B\n\3\0?\n\1\0B\6\3\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\r\0004\r\3\0\18\14\3\0'\16\14\0B\14\2\0?\14\1\0B\n\3\0?\n\1\0B\6\3\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\15\0004\r\6\0\18\14\3\0005\16\16\0B\14\2\2>\14\1\r\18\14\4\0)\16\1\0B\14\2\2>\14\2\r\18\14\3\0005\16\17\0B\14\2\2>\14\3\r\18\14\4\0)\16\0\0B\14\2\2>\14\4\r\18\14\3\0005\16\18\0B\14\2\0?\14\0\0B\n\3\0?\n\1\0B\6\3\1K\0\1\0\1\3\0\0\5\6}\1\3\0\0\t() {\t    \1\3\0\0\n@Test\21public void test\ttest5private static final long serialVersionUID = 1L;\18serialversion\1\4\0\0\5\t    \6}\1\4\0\0\a {\t    \t    \18public class \nclass\tjava\17add_snippets\18function_node\16insert_node\14text_node\fsnippet\fluasnip\frequire\0\vÄÄ¿ô\4\3ÄÄ¿ô\4\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n´\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\rdefaults\1\0\0\18layout_config\rvertical\1\0\0\1\0\2\nwidth\4ÊÃô≥\6ÊÃπˇ\3\vheight\4Õô≥Ê\fÃô≥ˇ\3\1\0\1\fpreview\1\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n„\1\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\0\tshow\1\0\0\1\0\4\vfolder\2\bgit\2\17folder_arrow\2\tfile\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\tview\1\0\0\1\0\1\nwidth\3¨\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n~\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\14auto_jump\1\0\4\17auto_preview\1\14auto_fold\1\15auto_close\1\14auto_open\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\1\17sync_install\1\1\3\0\0\tjava\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: cinnamon.nvim
time([[Config for cinnamon.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcinnamon\frequire\0", "config", "cinnamon.nvim")
time([[Config for cinnamon.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\nó\5\0\0\6\0'\0,6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\1\3=\3\b\0025\3\30\0005\4\n\0005\5\t\0=\5\v\0045\5\f\0=\5\r\0045\5\14\0=\5\15\0045\5\16\0=\5\17\0045\5\18\0=\5\19\0045\5\20\0=\5\21\0045\5\22\0=\5\23\0045\5\24\0=\5\25\0045\5\26\0=\5\27\0045\5\28\0=\5\29\4=\4\31\3=\3 \0025\3\"\0005\4!\0=\4#\3=\3$\2B\0\2\0016\0%\0'\2&\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\foptions\vstyles\1\0\0\1\0\1\rcomments\vitalic\vgroups\ball\1\0\0\31DiagnosticVirtualTextError\1\0\1\abg\bbg1\30DiagnosticVirtualTextHint\1\0\1\abg\bbg1\30DiagnosticVirtualTextInfo\1\0\1\abg\bbg1\30DiagnosticVirtualTextWarn\1\0\1\abg\bbg1\19DiagnosticHint\1\0\1\abg\bbg1\19DiagnosticInfo\1\0\1\abg\bbg1\19DiagnosticWarn\1\0\1\abg\bbg1\20DiagnosticError\1\0\1\abg\bbg1\16TSParameter\1\0\1\afg\18palette.white\tType\1\0\0\1\0\1\afg\17palette.cyan\nspecs\1\0\0\1\0\0\fdiag_bg\1\0\0\1\0\5\fwarning\bbg1\nerror\bbg1\nhints\bbg1\tinfo\bbg1\twarn\bbg1\nsetup\rnightfox\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: modes.nvim
time([[Config for modes.nvim]], true)
try_loadstring("\27LJ\2\n¸\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ignore_filetypes\1\3\0\0\rNvimTree\20TelescopePrompt\vcolors\1\0\4\15set_number\2\15set_cursor\2\17line_opacity\4≥ÊÃô\3≥Êå˛\3\19set_cursorline\2\1\0\4\vdelete\f#c75c6a\vvisual\f#9745be\vinsert\f#40cc40\tcopy\f#f5c359\nsetup\nmodes\frequire\0", "config", "modes.nvim")
time([[Config for modes.nvim]], false)
-- Config for: close-buffers.nvim
time([[Config for close-buffers.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18close_buffers\frequire\0", "config", "close-buffers.nvim")
time([[Config for close-buffers.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nÅ\2\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\3\rextended\1\nextra\2\nbasic\2\nextra\1\0\3\nabove\15<leader>cO\beol\15<leader>cA\nbelow\15<leader>co\ropleader\1\0\1\tline\14<leader>c\ftoggler\1\0\1\tline\15<leader>cc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
