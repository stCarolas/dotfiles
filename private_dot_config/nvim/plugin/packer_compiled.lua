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
    config = { "\27LJ\2\nÅ\2\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\3\nextra\2\nbasic\2\rextended\1\nextra\1\0\3\nbelow\15<leader>co\beol\15<leader>cA\nabove\15<leader>cO\ropleader\1\0\1\tline\14<leader>c\ftoggler\1\0\1\tline\15<leader>cc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nŸ\3\0\0\18\1\16\2D6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0009\5\6\0'\a\a\0004\b\3\0\18\t\1\0'\v\b\0004\f\6\0\18\r\2\0'\15\t\0B\r\2\2>\r\1\f\18\r\4\0-\15\0\0004\16\0\0004\17\0\0B\r\4\2>\r\2\f\18\r\2\0005\15\n\0B\r\2\2>\r\3\f\18\r\3\0)\15\0\0B\r\2\2>\r\4\f\18\r\2\0005\15\v\0B\r\2\0?\r\0\0B\t\3\0?\t\1\0B\5\3\0019\5\6\0'\a\a\0004\b\3\0\18\t\1\0'\v\f\0004\f\6\0\18\r\2\0005\15\r\0B\r\2\2>\r\1\f\18\r\3\0)\15\1\0B\r\2\2>\r\2\f\18\r\2\0005\15\14\0B\r\2\2>\r\3\f\18\r\3\0)\15\0\0B\r\2\2>\r\4\f\18\r\2\0005\15\15\0B\r\2\0?\r\0\0B\t\3\0?\t\1\0B\5\3\1K\0\1\0\0¿\1\3\0\0\5\6}\1\3\0\0\t() {\t    \1\3\0\0\n@Test\21public void test\ttest\1\4\0\0\5\t    \6}\1\4\0\0\a {\t    \t    \18public class \nclass\tjava\17add_snippets\18function_node\16insert_node\14text_node\fsnippet\fluasnip\frequire\vÄÄ¿ô\4\3ÄÄ¿ô\4\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/blamer.nvim",
    url = "https://github.com/APZelos/blamer.nvim"
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
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\n\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä Œ\3\0\0\6\1$\0J5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1#\0L\1\2\0\1¿\nÔåå  \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bred\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôëø \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñä¬\16\1\0\f\0n\0ÿ\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\3\5\0'\4\6\0005\5\b\0=\5\a\0009\5\t\0035\6\16\0005\a\v\0003\b\n\0=\b\f\a5\b\14\0009\t\r\1>\t\1\b=\b\15\a=\a\17\6>\6\1\0059\5\t\0035\6\22\0005\a\19\0003\b\18\0=\b\f\a5\b\21\0009\t\20\1>\t\1\b=\b\15\a=\a\23\6>\6\2\0059\5\t\0035\6 \0005\a\24\0009\b\25\2=\b\26\a5\b\27\0>\4\2\b=\b\28\a5\b\31\0006\t\0\0'\v\29\0B\t\2\0029\t\30\t>\t\1\b=\b\15\a=\a!\6>\6\3\0059\5\t\0035\6%\0005\a\"\0009\b\25\2=\b\26\a5\b$\0009\t#\1>\t\1\b>\4\2\b=\b\15\a=\a&\6>\6\4\0059\5\t\0035\6)\0005\a'\0005\b(\0=\b\28\a4\b\3\0009\t#\1>\t\1\b>\4\2\b=\b\15\a=\a*\6>\6\5\0059\5\t\0035\6-\0005\a+\0005\b,\0009\t\20\1>\t\1\b=\b\15\a=\a.\6>\6\a\0059\5\t\0035\0062\0005\a/\0005\b1\0009\t0\1>\t\1\b=\b\15\a=\a3\6>\6\b\0059\5\t\0035\0067\0005\a4\0005\b6\0009\t5\1>\t\1\b=\b\15\a=\a8\6>\6\t\0059\5\t\0035\6;\0005\a9\0005\b:\0009\t\r\1>\t\1\b=\b\15\a=\a<\6>\6\v\0059\5=\0035\6D\0005\a?\0003\b>\0=\b\f\a9\b@\2=\b\26\a5\bA\0=\b\28\a5\bC\0009\tB\1>\t\1\b=\b\15\a=\aE\6>\6\2\0059\5=\0035\6H\0005\aF\0009\b@\2=\b\26\a5\bG\0009\tB\1>\t\1\b=\b\15\a=\aI\6>\6\3\0059\5=\0035\6N\0005\aJ\0009\bK\2=\b\26\a5\bM\0009\tL\1>\t\1\b=\b\15\a=\aO\6>\6\4\0059\5=\0035\6S\0005\aP\0009\bK\2=\b\26\a5\bR\0009\tQ\1>\t\1\b=\b\15\a=\aT\6>\6\5\0059\5=\0035\6W\0005\aU\0009\bK\2=\b\26\a5\bV\0009\t\20\1>\t\1\b=\b\15\a=\aX\6>\6\6\0059\5=\0035\6\\\0005\aZ\0003\bY\0=\b\f\a5\b[\0009\t\r\1>\t\1\b=\b\15\a=\a]\6>\6\a\0059\5^\0035\6b\0005\a_\0005\b`\0=\b\28\a5\ba\0009\t\r\1>\t\1\b=\b\15\a=\ac\6>\6\1\0059\5^\0035\6f\0005\ad\0009\b\25\2=\b\26\a5\be\0=\b\15\a=\ag\6>\6\2\0059\5h\0035\6l\0005\ai\0004\b\3\0009\tj\1>\t\1\b6\tk\0>\t\2\b=\b\15\a=\am\6>\6\1\0052\0\0ÄK\0\1\0\15BufferIcon\1\0\0\tnill\afg\1\0\1\rprovider\15BufferIcon\21short_line_right\14SFileName\1\0\0\1\4\0\0\f#88C0D0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\16RainbowBlue\1\0\0\1\0\0\1\0\0\0\15DiffRemove\1\0\0\1\0\0\1\0\2\ticon\n ÔÖÜ \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\0\vorange\1\0\2\ticon\t Ôßâ\rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\0\ngreen\18hide_in_width\1\0\2\ticon\f   ÔÉæ \rprovider\fDiffAdd\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\nright\19DiagnosticInfo\1\0\0\1\0\0\1\0\2\ticon\n ÔÅö \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\0\0\tcyan\1\0\2\ticon\n ÔÅ™ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\0\0\vyellow\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\0\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\rLineInfo\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15LineColumn\rFileName\1\0\0\1\4\0\0\0\0\tbold\rdarkblue\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\24separator_highlight\1\2\0\0\tNONE\14condition\21buffer_not_empty\1\0\2\rprovider\rFileIcon\14separator\6 \vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\15RainbowRed\1\0\0\14highlight\1\0\0\tblue\rprovider\1\0\0\0\tleft\1\4\0\0\rNvimTree\tdbui\vpacker\20short_line_list\f#88C0D0\fsection\25galaxyline.condition\fdefault\21galaxyline.theme\15galaxyline\frequire\0" },
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
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["modes.nvim"] = {
    config = { "\27LJ\2\n¸\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ignore_filetypes\1\3\0\0\rNvimTree\20TelescopePrompt\vcolors\1\0\4\17line_opacity\4≥ÊÃô\3≥Êå˛\3\15set_cursor\2\15set_number\2\19set_cursorline\2\1\0\4\vdelete\f#c75c6a\tcopy\f#f5c359\vinsert\f#40cc40\vvisual\f#9745be\nsetup\nmodes\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/modes.nvim",
    url = "https://github.com/mvllow/modes.nvim"
  },
  ["nightfox.nvim"] = {
    config = { "\27LJ\2\nπ\2\0\0\6\0\23\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\1\3=\3\b\0025\3\14\0005\4\n\0005\5\t\0=\5\v\0045\5\f\0=\5\r\4=\4\15\3=\3\16\0025\3\18\0005\4\17\0=\4\19\3=\3\20\2B\0\2\0016\0\21\0'\2\22\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\foptions\vstyles\1\0\0\1\0\1\rcomments\vitalic\vgroups\ball\1\0\0\16TSParameter\1\0\1\afg\18palette.white\tType\1\0\0\1\0\1\afg\17palette.cyan\nspecs\1\0\0\1\0\0\fdiag_bg\1\0\0\1\0\1\nerror\bbg1\nsetup\rnightfox\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nightfox.nvim",
    url = "https://github.com/EdenEast/nightfox.nvim"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire»\1\0\2\a\1\b\0\0156\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\0\0\tname\vsource\1\0\5\vbuffer\r[Buffer]\18latex_symbols\f[LaTeX]\fluasnip\14[LuaSnip]\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\tmenu\n%s %s\vformat\vstring\tkind’\3\1\0\n\1!\0:6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\4=\4\t\0039\4\r\0009\4\14\0049\4\15\0045\6\17\0009\a\r\0009\a\16\a)\t¸ˇB\a\2\2=\a\18\0069\a\r\0009\a\16\a)\t\4\0B\a\2\2=\a\19\0069\a\r\0009\a\20\aB\a\1\2=\a\21\0069\a\r\0009\a\22\aB\a\1\2=\a\23\0069\a\r\0009\a\24\a5\t\25\0B\a\2\2=\a\26\6B\4\2\2=\4\r\0035\4\28\0003\5\27\0=\5\29\4=\4\30\0039\4\b\0009\4\31\0044\6\3\0005\a \0>\a\1\6B\4\2\2=\4\31\3B\1\2\1K\0\1\0\0¿\1\0\1\tname\rnvim_lsp\fsources\15formatting\vformat\1\0\0\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
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
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\nç\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\tview\1\0\0\1\0\1\nwidth\3¨\2\nsetup\14nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n¿\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\1\1\3\0\0\tjava\blua\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
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
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n´\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\rdefaults\1\0\0\18layout_config\rvertical\1\0\0\1\0\2\vheight\4Õô≥Ê\fÃô≥ˇ\3\nwidth\4ÊÃô≥\6ÊÃπˇ\3\1\0\1\fpreview\1\nsetup\14telescope\frequire\0" },
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
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
  ["vim-projectionist"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/vim-projectionist",
    url = "https://github.com/tpope/vim-projectionist"
  },
  ["vim-rooter"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-test"] = {
    loaded = true,
    path = "/home/stCarolas/.local/share/nvim/site/pack/packer/start/vim-test",
    url = "https://github.com/vim-test/vim-test"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
try_loadstring("\27LJ\2\n\20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t‚ñä Œ\3\0\0\6\1$\0J5\0\1\0-\1\0\0009\1\0\1=\1\2\0-\1\0\0009\1\3\1=\1\4\0-\1\0\0009\1\5\1=\1\6\0-\1\0\0009\1\5\1=\1\a\0-\1\0\0009\1\5\1=\1\b\0-\1\0\0009\1\t\1=\1\n\0-\1\0\0009\1\0\1=\1\v\0-\1\0\0009\1\f\1=\1\r\0-\1\0\0009\1\f\1=\1\14\0-\1\0\0009\1\f\1=\1\15\0-\1\0\0009\1\16\1=\1\17\0-\1\0\0009\1\18\1=\1\19\0-\1\0\0009\1\18\1=\1\20\0-\1\0\0009\1\0\1=\1\21\0-\1\0\0009\1\0\1=\1\22\0-\1\0\0009\1\23\1=\1\24\0-\1\0\0009\1\23\1=\1\25\0-\1\0\0009\1\23\1=\1\26\0-\1\0\0009\1\0\1=\1\27\0-\1\0\0009\1\0\1=\1\28\0006\1\29\0009\1\30\0019\1\31\1'\3 \0006\4\29\0009\4!\0049\4\"\4B\4\1\0028\4\4\0&\3\4\3B\1\2\1'\1#\0L\1\2\0\1¿\nÔåå  \tmode\afn\27hi GalaxyViMode guifg=\17nvim_command\bapi\bvim\6t\6!\ar?\arm\6r\tcyan\ace\acv\aRv\6R\vviolet\aic\vyellow\6\19\6S\6s\vorange\ano\6c\fmagenta\6V\6\22\6v\tblue\6i\ngreen\6n\1\0\0\bred\21\0\0\1\0\1\0\2'\0\0\0L\0\2\0\n Ôëø \20\0\0\1\0\1\0\2'\0\0\0L\0\2\0\t ‚ñä¬\16\1\0\f\0n\0ÿ\0016\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0016\2\0\0'\4\4\0B\2\2\0029\3\5\0'\4\6\0005\5\b\0=\5\a\0009\5\t\0035\6\16\0005\a\v\0003\b\n\0=\b\f\a5\b\14\0009\t\r\1>\t\1\b=\b\15\a=\a\17\6>\6\1\0059\5\t\0035\6\22\0005\a\19\0003\b\18\0=\b\f\a5\b\21\0009\t\20\1>\t\1\b=\b\15\a=\a\23\6>\6\2\0059\5\t\0035\6 \0005\a\24\0009\b\25\2=\b\26\a5\b\27\0>\4\2\b=\b\28\a5\b\31\0006\t\0\0'\v\29\0B\t\2\0029\t\30\t>\t\1\b=\b\15\a=\a!\6>\6\3\0059\5\t\0035\6%\0005\a\"\0009\b\25\2=\b\26\a5\b$\0009\t#\1>\t\1\b>\4\2\b=\b\15\a=\a&\6>\6\4\0059\5\t\0035\6)\0005\a'\0005\b(\0=\b\28\a4\b\3\0009\t#\1>\t\1\b>\4\2\b=\b\15\a=\a*\6>\6\5\0059\5\t\0035\6-\0005\a+\0005\b,\0009\t\20\1>\t\1\b=\b\15\a=\a.\6>\6\a\0059\5\t\0035\0062\0005\a/\0005\b1\0009\t0\1>\t\1\b=\b\15\a=\a3\6>\6\b\0059\5\t\0035\0067\0005\a4\0005\b6\0009\t5\1>\t\1\b=\b\15\a=\a8\6>\6\t\0059\5\t\0035\6;\0005\a9\0005\b:\0009\t\r\1>\t\1\b=\b\15\a=\a<\6>\6\v\0059\5=\0035\6D\0005\a?\0003\b>\0=\b\f\a9\b@\2=\b\26\a5\bA\0=\b\28\a5\bC\0009\tB\1>\t\1\b=\b\15\a=\aE\6>\6\2\0059\5=\0035\6H\0005\aF\0009\b@\2=\b\26\a5\bG\0009\tB\1>\t\1\b=\b\15\a=\aI\6>\6\3\0059\5=\0035\6N\0005\aJ\0009\bK\2=\b\26\a5\bM\0009\tL\1>\t\1\b=\b\15\a=\aO\6>\6\4\0059\5=\0035\6S\0005\aP\0009\bK\2=\b\26\a5\bR\0009\tQ\1>\t\1\b=\b\15\a=\aT\6>\6\5\0059\5=\0035\6W\0005\aU\0009\bK\2=\b\26\a5\bV\0009\t\20\1>\t\1\b=\b\15\a=\aX\6>\6\6\0059\5=\0035\6\\\0005\aZ\0003\bY\0=\b\f\a5\b[\0009\t\r\1>\t\1\b=\b\15\a=\a]\6>\6\a\0059\5^\0035\6b\0005\a_\0005\b`\0=\b\28\a5\ba\0009\t\r\1>\t\1\b=\b\15\a=\ac\6>\6\1\0059\5^\0035\6f\0005\ad\0009\b\25\2=\b\26\a5\be\0=\b\15\a=\ag\6>\6\2\0059\5h\0035\6l\0005\ai\0004\b\3\0009\tj\1>\t\1\b6\tk\0>\t\2\b=\b\15\a=\am\6>\6\1\0052\0\0ÄK\0\1\0\15BufferIcon\1\0\0\tnill\afg\1\0\1\rprovider\15BufferIcon\21short_line_right\14SFileName\1\0\0\1\4\0\0\f#88C0D0\0\tbold\1\0\1\rprovider\14SFileName\15BufferType\1\0\0\1\4\0\0\0\0\tbold\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\17FileTypeName\20short_line_left\16RainbowBlue\1\0\0\1\0\0\1\0\0\0\15DiffRemove\1\0\0\1\0\0\1\0\2\ticon\n ÔÖÜ \rprovider\15DiffRemove\17DiffModified\1\0\0\1\0\0\vorange\1\0\2\ticon\t Ôßâ\rprovider\17DiffModified\fDiffAdd\1\0\0\1\0\0\ngreen\18hide_in_width\1\0\2\ticon\f   ÔÉæ \rprovider\fDiffAdd\14GitBranch\1\0\0\1\4\0\0\0\0\tbold\1\0\1\rprovider\14GitBranch\fGitIcon\1\0\0\1\4\0\0\0\0\tbold\vviolet\1\2\0\0\tNONE\24check_git_workspace\1\0\1\14separator\6 \0\nright\19DiagnosticInfo\1\0\0\1\0\0\1\0\2\ticon\n ÔÅö \rprovider\19DiagnosticInfo\19DiagnosticHint\1\0\0\1\0\0\tcyan\1\0\2\ticon\n ÔÅ™ \rprovider\19DiagnosticHint\19DiagnosticWarn\1\0\0\1\0\0\vyellow\1\0\2\ticon\n ÔÅ± \rprovider\19DiagnosticWarn\20DiagnosticError\1\0\0\1\0\0\1\0\2\ticon\n ÔÅó \rprovider\20DiagnosticError\rLineInfo\1\0\0\1\2\0\0\tNONE\1\0\2\14separator\6 \rprovider\15LineColumn\rFileName\1\0\0\1\4\0\0\0\0\tbold\rdarkblue\1\0\1\rprovider\rFileName\rFileIcon\1\0\0\1\0\0\24get_file_icon_color!galaxyline.provider_fileinfo\24separator_highlight\1\2\0\0\tNONE\14condition\21buffer_not_empty\1\0\2\rprovider\rFileIcon\14separator\6 \vViMode\1\0\0\1\4\0\0\0\0\tbold\bred\1\0\0\0\15RainbowRed\1\0\0\14highlight\1\0\0\tblue\rprovider\1\0\0\0\tleft\1\4\0\0\rNvimTree\tdbui\vpacker\20short_line_list\f#88C0D0\fsection\25galaxyline.condition\fdefault\21galaxyline.theme\15galaxyline\frequire\0", "config", "galaxyline.nvim")
time([[Config for galaxyline.nvim]], false)
-- Config for: nightfox.nvim
time([[Config for nightfox.nvim]], true)
try_loadstring("\27LJ\2\nπ\2\0\0\6\0\23\0\0286\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\6\0005\4\4\0005\5\3\0=\5\5\4=\4\1\3=\3\b\0025\3\14\0005\4\n\0005\5\t\0=\5\v\0045\5\f\0=\5\r\4=\4\15\3=\3\16\0025\3\18\0005\4\17\0=\4\19\3=\3\20\2B\0\2\0016\0\21\0'\2\22\0B\0\2\1K\0\1\0\25colorscheme nightfox\bcmd\foptions\vstyles\1\0\0\1\0\1\rcomments\vitalic\vgroups\ball\1\0\0\16TSParameter\1\0\1\afg\18palette.white\tType\1\0\0\1\0\1\afg\17palette.cyan\nspecs\1\0\0\1\0\0\fdiag_bg\1\0\0\1\0\1\nerror\bbg1\nsetup\rnightfox\frequire\0", "config", "nightfox.nvim")
time([[Config for nightfox.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\vnotify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: cinnamon.nvim
time([[Config for cinnamon.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rcinnamon\frequire\0", "config", "cinnamon.nvim")
time([[Config for cinnamon.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\nç\1\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\factions\14open_file\1\0\0\1\0\1\17quit_on_open\2\tview\1\0\0\1\0\1\nwidth\3¨\2\nsetup\14nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nC\0\1\4\0\4\0\a6\1\0\0'\3\1\0B\1\2\0029\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\15lsp_expand\fluasnip\frequire»\1\0\2\a\1\b\0\0156\2\1\0009\2\2\2'\4\3\0-\5\0\0009\6\0\0018\5\6\0059\6\0\1B\2\4\2=\2\0\0015\2\5\0009\3\6\0009\3\a\0038\2\3\2=\2\4\1L\1\2\0\0\0\tname\vsource\1\0\5\vbuffer\r[Buffer]\18latex_symbols\f[LaTeX]\fluasnip\14[LuaSnip]\rnvim_lua\n[Lua]\rnvim_lsp\n[LSP]\tmenu\n%s %s\vformat\vstring\tkind’\3\1\0\n\1!\0:6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\6\0005\4\4\0003\5\3\0=\5\5\4=\4\a\0035\4\v\0009\5\b\0009\5\t\0059\5\n\5B\5\1\2=\5\f\4=\4\t\0039\4\r\0009\4\14\0049\4\15\0045\6\17\0009\a\r\0009\a\16\a)\t¸ˇB\a\2\2=\a\18\0069\a\r\0009\a\16\a)\t\4\0B\a\2\2=\a\19\0069\a\r\0009\a\20\aB\a\1\2=\a\21\0069\a\r\0009\a\22\aB\a\1\2=\a\23\0069\a\r\0009\a\24\a5\t\25\0B\a\2\2=\a\26\6B\4\2\2=\4\r\0035\4\28\0003\5\27\0=\5\29\4=\4\30\0039\4\b\0009\4\31\0044\6\3\0005\a \0>\a\1\6B\4\2\2=\4\31\3B\1\2\1K\0\1\0\0¿\1\0\1\tname\rnvim_lsp\fsources\15formatting\vformat\1\0\0\0\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\15completion\1\0\0\rbordered\vwindow\vconfig\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n´\1\0\0\6\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\b\0005\3\3\0005\4\5\0005\5\4\0=\5\6\4=\4\a\3=\3\t\2B\0\2\1K\0\1\0\rdefaults\1\0\0\18layout_config\rvertical\1\0\0\1\0\2\vheight\4Õô≥Ê\fÃô≥ˇ\3\nwidth\4ÊÃô≥\6ÊÃπˇ\3\1\0\1\fpreview\1\nsetup\14telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: close-buffers.nvim
time([[Config for close-buffers.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18close_buffers\frequire\0", "config", "close-buffers.nvim")
time([[Config for close-buffers.nvim]], false)
-- Config for: Comment.nvim
time([[Config for Comment.nvim]], true)
try_loadstring("\27LJ\2\nÅ\2\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\rmappings\1\0\3\nextra\2\nbasic\2\rextended\1\nextra\1\0\3\nbelow\15<leader>co\beol\15<leader>cA\nabove\15<leader>cO\ropleader\1\0\1\tline\14<leader>c\ftoggler\1\0\1\tline\15<leader>cc\1\0\2\vsticky\2\fpadding\2\nsetup\fComment\frequire\0", "config", "Comment.nvim")
time([[Config for Comment.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n¿\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\1\17sync_install\1\1\3\0\0\tjava\blua\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\na\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\vexpand\1\2\0\0\vmethod\1\0\1\fcontext\3\1\nsetup\rtwilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: modes.nvim
time([[Config for modes.nvim]], true)
try_loadstring("\27LJ\2\n¸\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\21ignore_filetypes\1\3\0\0\rNvimTree\20TelescopePrompt\vcolors\1\0\4\17line_opacity\4≥ÊÃô\3≥Êå˛\3\15set_cursor\2\15set_number\2\19set_cursorline\2\1\0\4\vdelete\f#c75c6a\tcopy\f#f5c359\vinsert\f#40cc40\vvisual\f#9745be\nsetup\nmodes\frequire\0", "config", "modes.nvim")
time([[Config for modes.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nŸ\3\0\0\18\1\16\2D6\0\0\0'\2\1\0B\0\2\0029\1\2\0009\2\3\0009\3\4\0009\4\5\0009\5\6\0'\a\a\0004\b\3\0\18\t\1\0'\v\b\0004\f\6\0\18\r\2\0'\15\t\0B\r\2\2>\r\1\f\18\r\4\0-\15\0\0004\16\0\0004\17\0\0B\r\4\2>\r\2\f\18\r\2\0005\15\n\0B\r\2\2>\r\3\f\18\r\3\0)\15\0\0B\r\2\2>\r\4\f\18\r\2\0005\15\v\0B\r\2\0?\r\0\0B\t\3\0?\t\1\0B\5\3\0019\5\6\0'\a\a\0004\b\3\0\18\t\1\0'\v\f\0004\f\6\0\18\r\2\0005\15\r\0B\r\2\2>\r\1\f\18\r\3\0)\15\1\0B\r\2\2>\r\2\f\18\r\2\0005\15\14\0B\r\2\2>\r\3\f\18\r\3\0)\15\0\0B\r\2\2>\r\4\f\18\r\2\0005\15\15\0B\r\2\0?\r\0\0B\t\3\0?\t\1\0B\5\3\1K\0\1\0\0¿\1\3\0\0\5\6}\1\3\0\0\t() {\t    \1\3\0\0\n@Test\21public void test\ttest\1\4\0\0\5\t    \6}\1\4\0\0\a {\t    \t    \18public class \nclass\tjava\17add_snippets\18function_node\16insert_node\14text_node\fsnippet\fluasnip\frequire\vÄÄ¿ô\4\3ÄÄ¿ô\4\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
