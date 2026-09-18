-- global
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Color
--vim.cmd("colorscheme habamax")
--vim.cmd("highlight MatchParen gui=underline guifg=white guibg=NONE")

-- Basic 
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wrap = false
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 8

-- Indents
vim.opt.tabstop = 2		-- Tab width
vim.opt.shiftwidth = 2		-- Indent width
vim.opt.softtabstop = 2		-- Soft tab stop
vim.opt.expandtab = true	
vim.opt.smartindent = true
vim.opt.autoindent = true	-- Copy indent from current line

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = false	-- show matches as you type

-- Visual
--vim.opt.termguicolors = true
--vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "100"

-- File Handling
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.autowrite = false

-- Behavior
vim.opt.hidden = true
vim.opt.errorbells = false
vim.opt.backspace = "indent,eol,start"
vim.opt.iskeyword:append("_")
vim.opt.mouse = ""
vim.opt.encoding = "UTF-8"

vim.keymap.set("n", "<leader>o", ":update<CR> :source<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")

-- Insert header line: #------
vim.keymap.set("n", "<leader>h", function()
    vim.api.nvim_put({ "#" .. string.rep("-", 69) }, "l", true, true)
end, { desc = "Insert header line" })

-- Read Shebang
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern="*",
  callback = function()
    local first_line = vim.fn.getline(1)
    if first_line:match("^#!.*/bash") or first_line:match("^#!.*/sh") then
      vim.opt_local.filetype = "sh"
    end
  end,
})

-- Shell specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "sh",
  callback = function()
    vim.opt_local.expandtab = false
    vim.opt_local.tabstop = 8
    vim.opt_local.shiftwidth=8
  end,
})

-- Python specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.autoindent = true
    vim.opt_local.smartindent = true
  end,
})

-- Lua specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.autoindent = true
    vim.opt_local.smartindent = true
  end,
})

-- Perl specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = "perl",
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.autoindent = true
    vim.opt_local.smartindent = true
  end,
})
    
--vim.opt.guicursor = {
--  "n-v-c:hor25-blinkon1",
--  "i-ci:hor20-blinkon1",
--  "r-cr:hor20-blinkon1"
--}

-- Colorschemes via plugins
--require("plugin.vague")
--require("plugin.kanso")
require("plugin.treesitter")
