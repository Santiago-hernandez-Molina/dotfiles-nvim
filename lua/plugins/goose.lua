return {
    "azorng/goose.nvim",
    config = function()
        require("goose").setup({
            keymap = {
                global = {
                    toggle = "<leader>at",           -- Abrir Goose (o cerrar si ya está abierto)
                    open_input = "<leader>ai",       -- Abrir ventana de entrada
                    open_output = "<leader>ao",      -- Mostrar ventana de salida
                    toggle_focus = "<leader>af",     -- Alternar enfoque entre Goose y ventana actual
                    configure_provider = '<leader>ap',
                    close = "<leader>aq",            -- Cerrar ventanas de Goose
                    select_session = '<leader>as',   -- Select and load a goose session
                    goose_mode_chat = '<leader>amc', -- Set goose mode to `chat`. (Tool calling disabled. No editor context besides selections)
                    goose_mode_auto = '<leader>ama',
                },
            },
            providers = {
                github_copilot = {
                    "gpt-4o",
                    "gemini-2.5-pro",
                    "gemini-2.0-flash-001",
                    "claude-3.5-sonnet",
                    "claude-4-sonnet",
                },
            },
        })
    end,
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "MeanderingProgrammer/render-markdown.nvim",
            opts = {
                anti_conceal = { enabled = false },
            },
        }
    },
}
