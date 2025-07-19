local map = vim.keymap.set
local telescope = require "telescope"
local builtin = require "telescope.builtin"

map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })

map("n", "<leader>fF", function()
  builtin.find_files { hidden = true, no_ignore = true }
end, { desc = "Telescope find hidden files" })

map("n", "<leader>fw", builtin.live_grep, { desc = "Telescope live grep" })

map("n", "<leader>fW", function()
  builtin.live_grep { additional_args = { "--hidden", "--no-ignore" } }
end, { desc = "Telescope live grep hidden files" })

map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
map("n", "<leader>fg", builtin.git_status, { desc = "Telescope git status" })
map("n", "<leader>fc", builtin.git_commits, { desc = "Telescope git commits" })
map("n", "<leader>fr", builtin.lsp_references, { desc = "Telescope lsp references" })
map("n", "<leader>fd", builtin.diagnostics, { desc = "Telescope diagnostics" })

telescope.setup {
  extensions = {
  },

  defaults = {
    path_display = { "smart" },
    mappings = {
      i = {
        ["<C-u>"] = false,
      },
    },
  },
}

telescope.load_extension "zf-native"
