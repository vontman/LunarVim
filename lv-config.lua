--[[
O is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general

O.format_on_save = false
O.completion.autocomplete = true
O.auto_close_tree = 0
O.default_options.wrap = false
O.default_options.timeoutlen = 100
O.leader_key = " "

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.dashboard.active = true
O.plugin.floatterm.active = true
O.plugin.zen.active = false
O.plugin.zen.window.height = 0.90

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "maintained"
O.treesitter.ignore_install = { "haskell" }
O.treesitter.highlight.enabled = true

-- python
-- O.lang.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true
-- to change default formatter from yapf to black
-- O.lang.python.formatter.exe = "black"
-- O.lang.python.formatter.args = {"-"}

-- go
-- to change default formatter from gofmt to goimports
-- O.lang.formatter.go.exe = "goimports"

-- javascript
O.lang.tsserver.linter = nil

-- rust
-- O.lang.rust.formatter = {
--   exe = "rustfmt",
--   args = {"--emit=stdout", "--edition=2018"},
-- }

-- latex
-- O.lang.latex.auto_save = false
-- O.lang.latex.ignore_errors = { }

-- Additional Plugins
O.user_plugins = {

  {"mtdl9/vim-log-highlighting"},
  {'karb94/neoscroll.nvim'},
  {"ray-x/lsp_signature.nvim"},
  {
    "EdenEast/nightfox.nvim",
    config= require('nightfox').load("nightfox")
  }
    -- {"folke/tokyonight.nvim"}, {
    --     "ray-x/lsp_signature.nvim",
    --     config = function() require"lsp_signature".on_attach() end,
    --     event = "InsertEnter"
    -- }
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- O.user_autocommands = {{ "BufWinEnter", "*", "echo \"hi again\""}}

-- Additional Leader bindings for WhichKey
-- O.user_which_key = {
--   A = {
--     name = "+Custom Leader Keys",
--     a = { "<cmd>echo 'first custom command'<cr>", "Description for a" },
--     b = { "<cmd>echo 'second custom command'<cr>", "Description for b" },
--   },
-- }

vim.o.guifont = "JetBrainsMono Nerd Font"

require "lsp_signature".setup()

-- -- Setting up neoscroll for smooth scrolling
-- require('neoscroll').setup({
--     -- All these keys will be mapped to their corresponding default scrolling animation
--     mappings = {'<C-u>', '<C-d>', '<C-b>', '<C-f>',
--                 '<C-y>', '<C-e>', 'zt', 'zz', 'zb'},
--     hide_cursor = true,          -- Hide cursor while scrolling
--     stop_eof = true,             -- Stop at <EOF> when scrolling downwards
--     use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
--     respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
--     cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
--     easing_function = 'circular',        -- Default easing function
--     pre_hook = nil,              -- Function to run before the scrolling animation starts
--     post_hook = nil,              -- Function to run after the scrolling animation ends
-- })
-- 
-- local t = {}
-- -- Syntax: t[keys] = {function, {function arguments}}
-- t['<C-u>'] = {'scroll', {'-vim.wo.scroll', 'true', '100'}}
-- t['<C-d>'] = {'scroll', { 'vim.wo.scroll', 'true', '100'}}
-- t['<C-b>'] = {'scroll', {'-vim.api.nvim_win_get_height(0)', 'true', '150'}}
-- t['<C-f>'] = {'scroll', { 'vim.api.nvim_win_get_height(0)', 'true', '150'}}
-- t['<C-y>'] = {'scroll', {'-0.10', 'false', '30'}}
-- t['<C-e>'] = {'scroll', { '0.10', 'false', '30'}}
-- t['zt']    = {'zt', {'100'}}
-- t['zz']    = {'zz', {'100'}}
-- t['zb']    = {'zb', {'100'}}
-- 
-- require('neoscroll.config').set_mappings(t)
O.colorscheme = "nightfox"

