vim.opt.guicursor = ""

vim.opt.nu = true                               -- line numbers
vim.opt.relativenumber = true                   -- relative line numbers

vim.opt.tabstop = 2                             -- insert 2 spaces for a tab
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2                          -- the number of spaces inserted for each indentation
vim.opt.expandtab = true                        -- convert tabs to spaces

vim.opt.smartindent = true                      -- make indenting smarter again

vim.opt.wrap = false                            -- display lines as one long line

vim.opt.swapfile = false                        -- creates a swapfile
vim.opt.backup = false                          -- creates a backup file
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true                         -- enable persistent undo

vim.opt.hlsearch = true                         -- highlight all matches on previous search pattern
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8                           -- is one of my fav
vim.opt.signcolumn = "yes"                      -- always show the sign column, otherwise it would shift the text each time
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 300                        -- faster completion (4000ms default)

-- vim.opt.colorcolumn = "80"

-- :help options
vim.opt.clipboard = "unnamedplus"               -- allows neovim to access the system clipboard
vim.opt.cmdheight = 2                           -- more space in the neovim command line for displaying messages
vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp
vim.opt.conceallevel = 0                        -- so that `` is visible in markdown files
vim.opt.fileencoding = "utf-8"                  -- the encoding written to a file
vim.opt.ignorecase = true                       -- ignore case in search patterns
vim.opt.mouse = "a"                             -- allow the mouse to be used in neovim
vim.opt.pumheight = 10                          -- pop up menu height
vim.opt.showmode = false                        -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2                         -- always show tabs
vim.opt.smartcase = true                        -- smart case
vim.opt.splitbelow = true                       -- force all horizontal splits to go below current window
vim.opt.splitright = true                       -- force all vertical splits to go to the right of current window
vim.opt.timeoutlen = 1000                       -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.writebackup = false                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
vim.opt.cursorline = true                       -- highlight the current line
vim.opt.cursorcolumn = true                       -- highlight the current line
vim.opt.numberwidth = 4                         -- set number column width to 2 {default 4}
vim.opt.sidescrolloff = 8
vim.opt.guifont = "monospace:h17"               -- the font used in graphical neovim applications

vim.opt.shortmess:append "c"

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
