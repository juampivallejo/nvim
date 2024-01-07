return {
  "mbbill/undotree",
  keys = {
    { "<leader><F5>", "<cmd>UndotreeToggle<cr>", desc = "Undo Tree" },
  },
  config = function()
    require("undotree").setup()
  end,
}
