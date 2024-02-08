local harpoon = require("harpoon")
harpoon:setup({})

-- basic telescope configuration
-- BUG: Cannot remove files from list
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
  local file_paths = {}
  for _, item in ipairs(harpoon_files.items) do
    table.insert(file_paths, item.value)
  end

  require("telescope.pickers")
    .new({}, {
      prompt_title = "Harpoon",
      finder = require("telescope.finders").new_table({
        results = file_paths,
      }),
      previewer = conf.file_previewer({}),
      sorter = conf.generic_sorter({}),
    })
    :find()
end

vim.keymap.set("n", "<leader>k", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon Menu" })

-- Telescope is not working fine, since I cannot edit the list
--
-- vim.keymap.set("n", "<leader>ae", function()
--  toggle_telescope(harpoon:list())
-- end, { desc = "Open harpoon window" })

vim.keymap.set("n", "<leader>kj", function()
  harpoon:list():append()
end, { desc = "Harpoon Add File" })

vim.keymap.set("n", "<leader>1", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "<leader>2", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "<leader>3", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "<leader>4", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<leader>kp", function()
  harpoon:list():prev()
end, { desc = "Previous" })
vim.keymap.set("n", "<leader>kn", function()
  harpoon:list():next()
end, { desc = "Next" })
