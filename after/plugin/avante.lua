local avanteConfig = {
  provider = "copilot",

  behaviour = {
    auto_focus_sidebar = true,
    auto_suggestions_respect_ignore = false,
    jump_result_buffer_on_finish = false,
    use_cwd_as_project_root = false,

    auto_suggestions = false,
    auto_set_highlight_group = true,
    auto_set_keymaps = true,
    auto_apply_diff_after_generation = false,
    support_paste_from_clipboard = true,
    minimize_diff = true,
    enable_token_counting = true,
    enable_cursor_planning_mode = false,
    enable_claude_text_editor_tool_mode = false,
  },

  mappings = {
    --- @class AvanteConflictMappings
    diff = {
      ours = "co",
      theirs = "ct",
      all_theirs = "ca",
      both = "cb",
      cursor = "cc",
      next = "]x",
      prev = "[x",
    },
    suggestion = {
      accept = "<M-l>",
      next = "<M-]>",
      prev = "<M-[>",
      dismiss = "<C-]>",
    },
    jump = {
      next = "]]",
      prev = "[[",
    },
    submit = {
      normal = "<CR>",
      insert = "<C-s>",
    },
    sidebar = {
      apply_all = "A",
      apply_cursor = "a",
      retry_user_request = "r",
      edit_user_request = "e",
      switch_windows = "<Tab>",
      reverse_switch_windows = "<S-Tab>",
      remove_file = "d",
      add_file = "@",
      close = { "<Esc>", "q" },
      close_from_input = { normal = "q", insert = "<C-d>" },
    },
  },

  windows = {
    position = "left",  -- the position of the sidebar
    wrap = true,        -- similar to vim.o.wrap
    width = 40,         -- default % based on available width
    sidebar_header = {
      enabled = true,   -- true, false to enable/disable the header
      align = "center", -- left, center, right for title
      rounded = true,
    },
    input = {
      prefix = " ",
      height = 6, -- Height of the input window in vertical layout
    },
    edit = {
      start_insert = true, -- Start insert mode when opening the edit window
      border = "rounded",
    },
    ask = {
      floating = false,          -- Open the 'AvanteAsk' prompt in a floating window
      start_insert = false,      -- Start insert mode when opening the ask window
      ---@type "ours" | "theirs"
      focus_on_apply = "theirs", -- which diff to focus after applying
      border = "rounded",
    },
  },
}

require("avante").setup(avanteConfig)
