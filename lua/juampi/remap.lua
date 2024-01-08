local builtin = require("telescope.builtin")
vim.keymap.set("n", "<C-p>", builtin.find_files, {})
vim.keymap.set("n", "<leader>pf", builtin.git_files, { desc = "Find Git Files" })
vim.keymap.set("n", "<leader>ps", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Project Search Word" })

-- Keep buffer after pasting and replacing something
vim.keymap.set("n", "<leader>P", '"_dP', { desc = "Paste special" })

-- Yank to clipboard
vim.keymap.set("n", "<leader>y", '"+y', { desc = "Yank +" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Yank +" })
vim.keymap.set("n", "<leader>Y", '"+Y', { desc = "Yank EOL +" })

-- Naviate quick list
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
