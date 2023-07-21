require('telescope').setup{
  pickers = {
    find_files = {
      hidden = true
    },
    live_grep = {
      additional_args = function(opts)
          return {"--hidden"}
      end
    },
  },
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
vim.keymap.set('n', '<leader>b',  builtin.buffers, {})
vim.keymap.set('n', '<leader>ht', builtin.help_tags, {})

vim.keymap.set("n", "<leader>td", ":TodoTelescope<CR>", {noremap=true})
