-- 4 spaces for indent
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Dont use vim backup, but undo-tree
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

-- Unix files -> use LF instead of windows CRLF line ending
vim.opt.fileformat = "unix"

vim.filetype.add({
  extension = {
    ["http"] = "http",
  },
})
