-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

LazyVim.terminal.setup("pwsh")

vim.cmd('language en_US.UTF-8')
vim.cmd("syntax on")
vim.cmd("filetype plugin on")
-- vim.cmd("filetype plugin indent on")

vim.opt.autoindent = true
vim.opt.colorcolumn = "88"
vim.opt.fileencoding = "utf-8"
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.shiftwidth = 4
vim.opt.showbreak = "↪"
vim.opt.showmatch = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4
vim.opt.title = true
vim.opt.wildignorecase = true
vim.opt.wildignore:append({ "*.aux", "*.bbl", "*.blg", "*.brf", "*.fls", "*.fdb_latexmk", "*.synctex.gz", "*.xdv" })
vim.opt.wildignore:append({ "*.DS_Store" })
vim.opt.wildignore:append({ "*.jpg", "*.png", "*.jpeg", "*.bmp", "*.gif", "*.tiff", "*.svg", "*.ico" })
vim.opt.wildignore:append({ "*.o", "*.obj", "*.dylib", "*.bin", "*.dll", "*.exe" })
vim.opt.wildignore:append({ "*.pyc", "*.pkl" })
vim.opt.wildignore:append({ "*/.git/*", "*/.svn/*", "*/__pycache__/*", "*/build/**" })
