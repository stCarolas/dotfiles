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
local package_path_str = "/home/stCarolas/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/stCarolas/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/stCarolas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/stCarolas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/stCarolas/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    config = { "\27LJ\2\n�\2\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\3\nextra\2\nbasic\2\rextended\1\nextra\1\0\3\beol\15<leader>cA\nbelow\15<leader>co\nabove\15<leader>cO\ropleader\1\0\1\tline\14<leader>c\ftoggler\1\0\1\tline\15<leader>cc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nq\0\3\n\0\a\0\r6\3\0\0009\3\1\0039\3\2\3)\5\0\0B\3\2\0026\4\3\0009\4\4\4\18\b\3\0009\6\4\3'\t\5\0B\6\3\2'\a\6\0D\4\3\0\t^%a+\14%a+%.java\nmatch\vstring\22nvim_buf_get_name\bapi\bvim�\4\1\0\19\0\19\2R3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\3\4\0019\4\5\0019\5\6\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\t\0004\r\6\0\18\14\3\0'\16\n\0B\14\2\2>\14\1\r\18\14\5\0\18\16\0\0004\17\0\0004\18\0\0B\14\4\2>\14\2\r\18\14\3\0005\16\v\0B\14\2\2>\14\3\r\18\14\4\0)\16\0\0B\14\2\2>\14\4\r\18\14\3\0005\16\f\0B\14\2\0?\14\0\0B\n\3\0?\n\1\0B\6\3\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\r\0004\r\3\0\18\14\3\0'\16\14\0B\14\2\0?\14\1\0B\n\3\0?\n\1\0B\6\3\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\15\0004\r\6\0\18\14\3\0005\16\16\0B\14\2\2>\14\1\r\18\14\4\0)\16\1\0B\14\2\2>\14\2\r\18\14\3\0005\16\17\0B\14\2\2>\14\3\r\18\14\4\0)\16\0\0B\14\2\2>\14\4\r\18\14\3\0005\16\18\0B\14\2\0?\14\0\0B\n\3\0?\n\1\0B\6\3\1K\0\1\0\1\3\0\0\5\6}\1\3\0\0\t() {\t    \1\3\0\0\n@Test\21public void test\ttest5private static final long serialVersionUID = 1L;\18serialversion\1\4\0\0\5\t    \6}\1\4\0\0\a {\t    \t    \18public class \nclass\tjava\17add_snippets\18function_node\16insert_node\14text_node\fsnippet\fluasnip\frequire\0\v����\4\3����\4\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
  },
  ["boo-colorscheme-nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/boo-colorscheme-nvim",
    url = "https://github.com/stCarolas/boo-colorscheme-nvim"
  },
  ["cinnamon.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcinnamon\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/cinnamon.nvim",
    url = "https://github.com/declancm/cinnamon.nvim"
  },
  ["close-buffers.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18close_buffers\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/close-buffers.nvim",
    url = "https://github.com/kazhala/close-buffers.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-tabnine"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["editorconfig.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/editorconfig.nvim",
    url = "https://github.com/gpanders/editorconfig.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t▊ �\3\0\0\6\1$\0J5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1#\0L\1\2\0\1�\n  \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bred\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n  \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ▊�\16\1\0\f\0n\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\3\5\0'\4\6\0005\5\b\0=\5\a\0009\5\t\0035\6\16\0005\a\v\0003\b\n\0=\b\f\a5\b\14\0009\t\r\1>\t\1\b=\b\15\a=\a\17\6>\6\1\0059\5\t\0035\6\22\0005\a\19\0003\b\18\0=\b\f\a5\b\21\0009\t\20\1>\t\1\b=\b\15\a=\a\23\6>\6\2\0059\5\t\0035\6 \0005\a\24\0009\b\25\2=\b\26\a5\b\27\0>\4\2\b=\b\28\a5\b\31\0006\t\0\0'\v\29\0B\t\2\0029\t\30\t>\t\1\b=\b\15\a=\a!\6>\6\3\0059\5\t\0035\6%\0005\a\"\0009\b\25\2=\b\26\a5\b$\0009\t#\1>\t\1\b>\4\2\b=\b\15\a=\a&\6>\6\4\0059\5\t\0035\6)\0005\a'\0005\b(\0=\b\28\a4\b\3\0009\t#\1>\t\1\b>\4\2\b=\b\15\a=\a*\6>\6\5\0059\5\t\0035\6-\0005\a+\0005\b,\0009\t\20\1>\t\1\b=\b\15\a=\a.\6>\6\a\0059\5\t\0035\0062\0005\a/\0005\b1\0009\t0\1>\t\1\b=\b\15\a=\a3\6>\6\b\0059\5\t\0035\0067\0005\a4\0005\b6\0009\t5\1>\t\1\b=\b\15\a=\a8\6>\6\t\0059\5\t\0035\6;\0005\a9\0005\b:\0009\t\r\1>\t\1\b=\b\15\a=\a<\6>\6\v\0059\5=\0035\6D\0005\a?\0003\b>\0=\b\f\a9\b@\2=\b\26\a5\bA\0=\b\28\a5\bC\0009\tB\1>\t\1\b=\b\15\a=\aE\6>\6\2\0059\5=\0035\6H\0005\aF\0009\b@\2=\b\26\a5\bG\0009\tB\1>\t\1\b=\b\15\a=\aI\6>\6\3\0059\5=\0035\6N\0005\aJ\0009\bK\2=\b\26\a5\bM\0009\tL\1>\t\1\b=\b\15\a=\aO\6>\6\4\0059\5=\0035\6S\0005\aP\0009\bK\2=\b\26\a5\bR\0009\tQ\1>\t\1\b=\b\15\a=\aT\6>\6\5\0059\5=\0035\6W\0005\aU\0009\bK\2=\b\26\a5\bV\0009\t\20\1>\t\1\b=\b\15\a=\aX\6>\6\6\0059\5=\0035\6\\\0005\aZ\0003\bY\0=\b\f\a5\b[\0009\t\r\1>\t\1\b=\b\15\a=\a]\6>\6\a\0059\5^\0035\6b\0005\a_\0005\b`\0=\b\28\a5\ba\0009\t\r\1>\t\1\b=\b\15\a=\ac\6>\6\1\0059\5^\0035\6f\0005\ad\0009\b\25\2=\b\26\a5\be\0=\b\15\a=\ag\6>\6\2\0059\5h\0035\6l\0005\ai\0004\b\3\0009\tj\1>\t\1\b6\tk\0>\t\2\b=\b\15\a=\am\6>\6\1\0052\0\0�K\0\1\0\15BufferIcon\1\0\0\tnill\afg\1\0\1\rprovider\15BufferIcon\21short_line_right\14SFileName\1\0\0\1\4\0\0\f#88C0D0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\16RainbowBlue\1\0\0\1\0\0\1\0\0\0\15DiffRemove\1\0\0\1\0\0\1\0\2\ticon\n  \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\0\vorange\1\0\2\ticon\t 柳\rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\0\ngreen\18hide_in_width\1\0\2\ticon\f    \rprovider\fDiffAdd\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\nright\19DiagnosticInfo\1\0\0\1\0\0\1\0\2\ticon\n  \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\0\0\tcyan\1\0\2\ticon\n  \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\0\0\vyellow\1\0\2\ticon\n  \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\0\1\0\2\ticon\n  \rprovider\20DiagnosticError\rLineInfo\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15LineColumn\rFileName\1\0\0\1\4\0\0\0\0\tbold\rdarkblue\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\24separator_highlight\1\2\0\0\tNONE\14condition\21buffer_not_empty\1\0\2\rprovider\rFileIcon\14separator\6 \vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\15RainbowRed\1\0\0\14highlight\1\0\0\tblue\rprovider\1\0\0\0\tleft\1\4\0\0\rNvimTree\tdbui\vpacker\20short_line_list\f#88C0D0\fsection\25galaxyline.condition\fdefault\21galaxyline.theme\15galaxyline\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/galaxyline.nvim",
    url = "https://github.com/glepnir/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hlargs.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vhlargs\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/hlargs.nvim",
    url = "https://github.com/m-demare/hlargs.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim",
    url = "https://github.com/folke/lsp-colors.nvim"
  },
  ["modes.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ignore_filetypes\1\3\0\0\rNvimTree\20TelescopePrompt\vcolors\1\0\4\19set_cursorline\2\15set_number\2\15set_cursor\2\17line_opacity\4��̙\3���\3\1\0\4\tcopy\f#f5c359\vinsert\f#40cc40\vdelete\f#c75c6a\vvisual\f#9745be\nsetup\nmodes\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "https://github.com/sbdchd/neoformat"
  },
  neoterm = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/neoterm",
    url = "https://github.com/kassio/neoterm"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\3\1\0\n\0\30\0;6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\r\4=\4\t\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\a)\t��B\a\2\2=\a\19\0069\a\14\0009\a\17\a)\t\4\0B\a\2\2=\a\20\0069\a\14\0009\a\21\aB\a\1\2=\a\22\0069\a\14\0009\a\23\aB\a\1\2=\a\24\0069\a\14\0009\a\25\a5\t\26\0B\a\2\2=\a\27\6B\4\2\2=\4\14\0039\4\b\0009\4\28\0044\6\3\0005\a\29\0>\a\1\6B\4\2\2=\4\28\3B\1\2\1K\0\1\0\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-python"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-dap-python",
    url = "https://github.com/mfussenegger/nvim-dap-python"
  },
  ["nvim-docs-view"] = {
    commands = { "DocsViewToggle" },
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\rposition\nright\nwidth\3<\nsetup\14docs-view\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/opt/nvim-docs-view",
    url = "https://github.com/amrbashir/nvim-docs-view"
  },
  ["nvim-jdtls"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-jdtls",
    url = "https://github.com/mfussenegger/nvim-jdtls"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-nonicons"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-nonicons",
    url = "https://github.com/yamatsum/nvim-nonicons"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vnotify\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-scrollview"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-scrollview",
    url = "https://github.com/dstein64/nvim-scrollview"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\0\tshow\1\0\0\1\0\4\vfolder\2\bgit\2\17folder_arrow\2\tfile\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\tview\1\0\0\1\0\1\nwidth\3�\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n�\2\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\1\17sync_install\1\1\3\0\0\tjava\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ufo"] = {
    config = { "\27LJ\2\n%\0\2\3\0\1\0\0025\2\0\0L\2\2\0\1\3\0\0\15treesitter\vindentn\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\22provider_selector\1\0\1\30enable_fold_end_virt_text\2\0\nsetup\bufo\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17project_nvim\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["stabilize.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/stabilize.nvim",
    url = "https://github.com/luukvbaal/stabilize.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n�\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\rdefaults\1\0\0\18layout_config\rvertical\1\0\0\1\0\2\nwidth\4�̙�\6�̹�\3\vheight\4͙��\f̙��\3\1\0\1\fpreview\1\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n~\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\14auto_jump\1\0\4\14auto_open\1\17auto_preview\1\14auto_fold\1\15auto_close\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\na\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vexpand\1\2\0\0\vmethod\1\0\1\fcontext\3\1\nsetup\rtwilight\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "https://github.com/folke/twilight.nvim"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: hlargs.nvim
time([[Config for hlargs.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vhlargs\frequire\0", "config", "hlargs.nvim")
time([[Config for hlargs.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\n�\2\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\3\nextra\2\nbasic\2\rextended\1\nextra\1\0\3\beol\15<leader>cA\nbelow\15<leader>co\nabove\15<leader>cO\ropleader\1\0\1\tline\14<leader>c\ftoggler\1\0\1\tline\15<leader>cc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: modes.nvim
time([[Config for modes.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ignore_filetypes\1\3\0\0\rNvimTree\20TelescopePrompt\vcolors\1\0\4\19set_cursorline\2\15set_number\2\15set_cursor\2\17line_opacity\4��̙\3���\3\1\0\4\tcopy\f#f5c359\vinsert\f#40cc40\vdelete\f#c75c6a\vvisual\f#9745be\nsetup\nmodes\frequire\0", "config", "modes.nvim")
time([[Config for modes.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nq\0\3\n\0\a\0\r6\3\0\0009\3\1\0039\3\2\3)\5\0\0B\3\2\0026\4\3\0009\4\4\4\18\b\3\0009\6\4\3'\t\5\0B\6\3\2'\a\6\0D\4\3\0\t^%a+\14%a+%.java\nmatch\vstring\22nvim_buf_get_name\bapi\bvim�\4\1\0\19\0\19\2R3\0\0\0006\1\1\0'\3\2\0B\1\2\0029\2\3\0019\3\4\0019\4\5\0019\5\6\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\t\0004\r\6\0\18\14\3\0'\16\n\0B\14\2\2>\14\1\r\18\14\5\0\18\16\0\0004\17\0\0004\18\0\0B\14\4\2>\14\2\r\18\14\3\0005\16\v\0B\14\2\2>\14\3\r\18\14\4\0)\16\0\0B\14\2\2>\14\4\r\18\14\3\0005\16\f\0B\14\2\0?\14\0\0B\n\3\0?\n\1\0B\6\3\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\r\0004\r\3\0\18\14\3\0'\16\14\0B\14\2\0?\14\1\0B\n\3\0?\n\1\0B\6\3\0019\6\a\1'\b\b\0004\t\3\0\18\n\2\0'\f\15\0004\r\6\0\18\14\3\0005\16\16\0B\14\2\2>\14\1\r\18\14\4\0)\16\1\0B\14\2\2>\14\2\r\18\14\3\0005\16\17\0B\14\2\2>\14\3\r\18\14\4\0)\16\0\0B\14\2\2>\14\4\r\18\14\3\0005\16\18\0B\14\2\0?\14\0\0B\n\3\0?\n\1\0B\6\3\1K\0\1\0\1\3\0\0\5\6}\1\3\0\0\t() {\t    \1\3\0\0\n@Test\21public void test\ttest5private static final long serialVersionUID = 1L;\18serialversion\1\4\0\0\5\t    \6}\1\4\0\0\a {\t    \t    \18public class \nclass\tjava\17add_snippets\18function_node\16insert_node\14text_node\fsnippet\fluasnip\frequire\0\v����\4\3����\4\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\16\0\0196\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\0025\3\r\0005\4\v\0005\5\n\0=\5\f\4=\4\14\3=\3\15\2B\0\2\1K\0\1\0\rrenderer\nicons\1\0\0\tshow\1\0\0\1\0\4\vfolder\2\bgit\2\17folder_arrow\2\tfile\2\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\tview\1\0\0\1\0\1\nwidth\3�\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: stabilize.nvim
time([[Config for stabilize.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14stabilize\frequire\0", "config", "stabilize.nvim")
time([[Config for stabilize.nvim]], false)
-- Config for: fidget.nvim
time([[Config for fidget.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vfidget\frequire\0", "config", "fidget.nvim")
time([[Config for fidget.nvim]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\17project_nvim\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t▊ �\3\0\0\6\1$\0J5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1#\0L\1\2\0\1�\n  \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bred\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n  \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ▊�\16\1\0\f\0n\0�\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\3\5\0'\4\6\0005\5\b\0=\5\a\0009\5\t\0035\6\16\0005\a\v\0003\b\n\0=\b\f\a5\b\14\0009\t\r\1>\t\1\b=\b\15\a=\a\17\6>\6\1\0059\5\t\0035\6\22\0005\a\19\0003\b\18\0=\b\f\a5\b\21\0009\t\20\1>\t\1\b=\b\15\a=\a\23\6>\6\2\0059\5\t\0035\6 \0005\a\24\0009\b\25\2=\b\26\a5\b\27\0>\4\2\b=\b\28\a5\b\31\0006\t\0\0'\v\29\0B\t\2\0029\t\30\t>\t\1\b=\b\15\a=\a!\6>\6\3\0059\5\t\0035\6%\0005\a\"\0009\b\25\2=\b\26\a5\b$\0009\t#\1>\t\1\b>\4\2\b=\b\15\a=\a&\6>\6\4\0059\5\t\0035\6)\0005\a'\0005\b(\0=\b\28\a4\b\3\0009\t#\1>\t\1\b>\4\2\b=\b\15\a=\a*\6>\6\5\0059\5\t\0035\6-\0005\a+\0005\b,\0009\t\20\1>\t\1\b=\b\15\a=\a.\6>\6\a\0059\5\t\0035\0062\0005\a/\0005\b1\0009\t0\1>\t\1\b=\b\15\a=\a3\6>\6\b\0059\5\t\0035\0067\0005\a4\0005\b6\0009\t5\1>\t\1\b=\b\15\a=\a8\6>\6\t\0059\5\t\0035\6;\0005\a9\0005\b:\0009\t\r\1>\t\1\b=\b\15\a=\a<\6>\6\v\0059\5=\0035\6D\0005\a?\0003\b>\0=\b\f\a9\b@\2=\b\26\a5\bA\0=\b\28\a5\bC\0009\tB\1>\t\1\b=\b\15\a=\aE\6>\6\2\0059\5=\0035\6H\0005\aF\0009\b@\2=\b\26\a5\bG\0009\tB\1>\t\1\b=\b\15\a=\aI\6>\6\3\0059\5=\0035\6N\0005\aJ\0009\bK\2=\b\26\a5\bM\0009\tL\1>\t\1\b=\b\15\a=\aO\6>\6\4\0059\5=\0035\6S\0005\aP\0009\bK\2=\b\26\a5\bR\0009\tQ\1>\t\1\b=\b\15\a=\aT\6>\6\5\0059\5=\0035\6W\0005\aU\0009\bK\2=\b\26\a5\bV\0009\t\20\1>\t\1\b=\b\15\a=\aX\6>\6\6\0059\5=\0035\6\\\0005\aZ\0003\bY\0=\b\f\a5\b[\0009\t\r\1>\t\1\b=\b\15\a=\a]\6>\6\a\0059\5^\0035\6b\0005\a_\0005\b`\0=\b\28\a5\ba\0009\t\r\1>\t\1\b=\b\15\a=\ac\6>\6\1\0059\5^\0035\6f\0005\ad\0009\b\25\2=\b\26\a5\be\0=\b\15\a=\ag\6>\6\2\0059\5h\0035\6l\0005\ai\0004\b\3\0009\tj\1>\t\1\b6\tk\0>\t\2\b=\b\15\a=\am\6>\6\1\0052\0\0�K\0\1\0\15BufferIcon\1\0\0\tnill\afg\1\0\1\rprovider\15BufferIcon\21short_line_right\14SFileName\1\0\0\1\4\0\0\f#88C0D0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\16RainbowBlue\1\0\0\1\0\0\1\0\0\0\15DiffRemove\1\0\0\1\0\0\1\0\2\ticon\n  \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\0\vorange\1\0\2\ticon\t 柳\rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\0\ngreen\18hide_in_width\1\0\2\ticon\f    \rprovider\fDiffAdd\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\nright\19DiagnosticInfo\1\0\0\1\0\0\1\0\2\ticon\n  \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\0\0\tcyan\1\0\2\ticon\n  \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\0\0\vyellow\1\0\2\ticon\n  \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\0\1\0\2\ticon\n  \rprovider\20DiagnosticError\rLineInfo\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15LineColumn\rFileName\1\0\0\1\4\0\0\0\0\tbold\rdarkblue\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\24separator_highlight\1\2\0\0\tNONE\14condition\21buffer_not_empty\1\0\2\rprovider\rFileIcon\14separator\6 \vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\15RainbowRed\1\0\0\14highlight\1\0\0\tblue\rprovider\1\0\0\0\tleft\1\4\0\0\rNvimTree\tdbui\vpacker\20short_line_list\f#88C0D0\fsection\25galaxyline.condition\fdefault\21galaxyline.theme\15galaxyline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n�\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\rdefaults\1\0\0\18layout_config\rvertical\1\0\0\1\0\2\nwidth\4�̙�\6�̹�\3\vheight\4͙��\f̙��\3\1\0\1\fpreview\1\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire�\3\1\0\n\0\30\0;6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\0049\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\r\4=\4\t\0039\4\14\0009\4\15\0049\4\16\0045\6\18\0009\a\14\0009\a\17\a)\t��B\a\2\2=\a\19\0069\a\14\0009\a\17\a)\t\4\0B\a\2\2=\a\20\0069\a\14\0009\a\21\aB\a\1\2=\a\22\0069\a\14\0009\a\23\aB\a\1\2=\a\24\0069\a\14\0009\a\25\a5\t\26\0B\a\2\2=\a\27\6B\4\2\2=\4\14\0039\4\b\0009\4\28\0044\6\3\0005\a\29\0>\a\1\6B\4\2\2=\4\28\3B\1\2\1K\0\1\0\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-ufo
time([[Config for nvim-ufo]], true)
try_loadstring("\27LJ\2\n%\0\2\3\0\1\0\0025\2\0\0L\2\2\0\1\3\0\0\15treesitter\vindentn\1\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0003\3\3\0=\3\5\2B\0\2\1K\0\1\0\22provider_selector\1\0\1\30enable_fold_end_virt_text\2\0\nsetup\bufo\frequire\0", "config", "nvim-ufo")
time([[Config for nvim-ufo]], false)
-- Config for: cinnamon.nvim
time([[Config for cinnamon.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcinnamon\frequire\0", "config", "cinnamon.nvim")
time([[Config for cinnamon.nvim]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n~\0\0\4\0\5\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\0\0=\3\4\2B\0\2\1K\0\1\0\14auto_jump\1\0\4\14auto_open\1\17auto_preview\1\14auto_fold\1\15auto_close\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n�\2\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0005\4\t\0=\4\n\3=\3\v\0025\3\f\0=\3\r\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\21node_incremental\bgrn\22scope_incremental\bgrc\19init_selection\bgnn\21node_decremental\bgrm\1\0\1\venable\2\14highlight\1\0\2\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\1\17sync_install\1\1\3\0\0\tjava\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: close-buffers.nvim
time([[Config for close-buffers.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18close_buffers\frequire\0", "config", "close-buffers.nvim")
time([[Config for close-buffers.nvim]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\na\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vexpand\1\2\0\0\vmethod\1\0\1\fcontext\3\1\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DocsViewToggle lua require("packer.load")({'nvim-docs-view'}, { cmd = "DocsViewToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
