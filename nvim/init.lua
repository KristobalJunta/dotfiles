vim.opt.title = true
vim.opt.number = true

vim.cmd("syntax on")
vim.opt.colorcolumn = "88"
vim.opt.cursorline = true
vim.opt.swapfile = false
vim.opt.fileencoding = "utf-8"

-- Search settings
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Indent settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

-- vim.opt.backupdir = os.getenv("HOME") .. "/.cache/vim"
-- vim.opt.clipboard = "unnamedplus"

-- fully disable mouse
vim.opt.mouse = ""

vim.cmd("filetype plugin on")
-- vim.cmd("filetype plugin indent on")

-- Ignore certain files and folders when globing
vim.opt.wildignorecase = true
vim.opt.wildignore:append({ "*.o", "*.obj", "*.dylib", "*.bin", "*.dll", "*.exe" })
vim.opt.wildignore:append({ "*/.git/*", "*/.svn/*", "*/__pycache__/*", "*/build/**" })
vim.opt.wildignore:append({ "*.jpg", "*.png", "*.jpeg", "*.bmp", "*.gif", "*.tiff", "*.svg", "*.ico" })
vim.opt.wildignore:append({ "*.pyc", "*.pkl" })
vim.opt.wildignore:append({ "*.DS_Store" })
vim.opt.wildignore:append({ "*.aux", "*.bbl", "*.blg", "*.brf", "*.fls", "*.fdb_latexmk", "*.synctex.gz", "*.xdv" })

-- Break line at predefined characters
vim.opt.linebreak = true

-- Character to show before the lines that have been soft-wrapped
vim.opt.showbreak = "↪"

-- List all matches and complete till longest common string
vim.opt.wildmode = "list:longest"

-- Minimum lines to keep above and below cursor when scrolling
vim.opt.scrolloff = 3

-- Ask for confirmation when handling unsaved or read-only files
vim.opt.confirm = true

require("config.lazy")
