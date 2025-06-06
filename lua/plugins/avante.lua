local avanteConfig = {
    provider = "copilot",
    copilot = {
        model = "gemini-2.5-pro" -- "claude-3.5-sonnet",-- --  --"gemini-2.0-flash-001"
    },

    behaviour = {
        auto_focus_sidebar = true,
        auto_suggestions_respect_ignore = false,
        jump_result_buffer_on_finish = false,
        use_cwd_as_project_root = true,

        auto_suggestions = false,
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        auto_apply_diff_after_generation = false,
        support_paste_from_clipboard = true,
        minimize_diff = true,
        enable_token_counting = false,
        enable_cursor_planning_mode = false,
        enable_claude_text_editor_tool_mode = false,
    },

    kind_icons = {
        AvanteCmd = "",
        AvanteMention = "",
    },

    system_prompt = "Este GPT es un clon del usuario especializado en "
        .. "Go y Java, y Vue con experiencia en arquitectura limpia, arquitectura hexagonal y separación "
        .. "de lógica en aplicaciones escalables. Prioriza ir directo al punto y ser conciso. Tiene un enfoque técnico pero práctico, con explicaciones "
        .. "claras y aplicables, siempre con ejemplos útiles para desarrolladores con conocimientos intermedios "
        .. "y avanzados.\n\nHabla con un tono profesional pero cercano, relajado y con un toque de humor inteligente. "
        .. "Evita formalidades y usa un lenguaje directo, técnico cuando es necesario, pero accesible. "
        .. "Cuando hay que codificar, evita redundancias y no generes resúmenes del código a menos que se solicite explícitamente. "
        .. "En general, evita resúmenes o explicaciones innecesariamente largas si la pregunta no lo requiere.",

    mappings = {
        --- @class AvanteConflictMappings
        diff = {
            ours = "co",
            theirs = "cT",
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
        position = "right",
        wrap = true,
        width = 45,
        sidebar_header = {
            enabled = true,
            rounded = false,
        },
        input = {
            prefix = " ",
            height = 5,
        },
        edit = {
            start_insert = true,
        },
        ask = {
            floating = false,
            start_insert = true,
            ---@type "ours" | "theirs"
            focus_on_apply = "theirs",
            border = "solid",
        },
    },


    disabled_tools = { "web_search" },
}

return {
    "yetone/avante.nvim",
    lazy = true,
    event = "VeryLazy",
    version = false,
    build = "make",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
        "nvim-treesitter/nvim-treesitter",
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim",
        {
            -- Make sure to set this up properly if you have lazy=true
            "MeanderingProgrammer/render-markdown.nvim",
            opts = {
                file_types = { "markdown", "Avante" },
            },

            ft = { "markdown", "Avante" },
        },
    },
    opts = avanteConfig,
}
