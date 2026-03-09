-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {
  {
    -- Add function that can jump to a line
    "folke/flash.nvim",
    keys = {
      {
        "<leader>jl",
        mode = { "n", "x" },
        function()
          require("flash").jump {
            search = { mode = "search", max_length = 0 },
            label = { after = { 0, 0 } },
            pattern = "^",
          }
        end,
        desc = "Flash jump to a line",
      },
    },
  },
  -- Add vimwiki
  {
    "serenevoid/kiwi.nvim",
    opts = {
      {
        name = "work",
        path = "Documents/wiki/work-wiki",
      },
      {
        name = "personal",
        path = "Documents/wiki/personal-wiki",
      },
    },
    keys = {
      { "<leader>vw", ':lua require("kiwi").open_wiki_index()<cr>', desc = "Open Wiki index" },
      {
        "<leader>vp",
        ':lua require("kiwi").open_wiki_index("personal")<cr>',
        desc = "Open index of personal wiki",
      },
      { "<leader>vt", ':lua require("kiwi").todo.toggle()<cr>', desc = "Toggle Markdown Task" },
    },
    lazy = true,
  },
  -- Add mark highlight function - written by doubao
  {
    "hendrikyang/nvim-wordhighlighter",
    config = function() require("wordhighlighter").setup() end,
    lazy = false,
  },
}
