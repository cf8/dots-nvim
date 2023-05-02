local plugin = { "nvim-telescope/telescope.nvim" }

plugin.dependencies = {
  { "nvim-telescope/telescope-fzf-native.nvim" },
}

function plugin.config()
  local telescope = require("telescope")
  local actions = require("telescope.actions")
  telescope.load_extension('projects')

  telescope.setup({
    extensions = {
      fzf = {
        fuzzy = true,               -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case",   -- or "ignore_case" or "respect_case"
        -- the default case_mode is "smart_case"
      },
    },
    defaults = {
      prompt_prefix = "   ",
      selection_caret = " ",
      path_display = { "smart" },
      sorting_strategy = "ascending",
      file_ignore_patterns = { ".git/", "node_modules" },
      layout_config = {
        horizontal = {
          prompt_position = "top",
          preview_width = 0.55,
          results_width = 0.8,
        },
        vertical = {
          mirror = false,
        },
        width = 0.87,
        height = 0.80,
        preview_cutoff = 120,
      },
      borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
      file_sorter = require("telescope.sorters").get_fuzzy_file,
      generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
      file_previewer = require("telescope.previewers").vim_buffer_cat.new,
      grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
      qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
      buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
      mappings = {
        i = {
          ["<Down>"] = actions.cycle_history_next,
          ["<Up>"] = actions.cycle_history_prev,
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<esc>"] = actions.close,
        },
        n = {
          ["<esc>"] = actions.close,
        },
      },
    },
  })
end

return plugin
