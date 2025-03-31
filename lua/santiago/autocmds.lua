vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("LspAttachConflicts", { clear = true }),
  desc = "Prevent tsserver and volar conflict",
  callback = function(args)
    if not (args.data and args.data.client_id) then
      return
    end

    local active_clients = vim.lsp.get_clients()
    local client = vim.lsp.get_client_by_id(args.data.client_id)

    if client ~= nil and client.name == "ts_ls" then
      for _, c in ipairs(active_clients) do
        if c.name == "volar" then
          client.stop()
        end
      end
    end

    if client ~= nil and client.name == "volar" then
      for _, c in ipairs(active_clients) do
        if c.name == "ts_ls" then
          c.stop()
        end
      end
    end
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "yaml",
  callback = function()
    vim.opt_local.spell = false
  end,
  desc = "Disable spell checking for YAML files",
})


vim.api.nvim_create_autocmd("LspAttach", {
  desc = "LSP actions",
  callback = function(event)
    local opts = { buffer = event.buf, remap = false }
    local tele = require("telescope.builtin")

    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "<leader>mi", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "<leader>mh", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>mr", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<leader>ma", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>mn", vim.diagnostic.goto_next)
    vim.keymap.set("n", "<leader>mp", vim.diagnostic.goto_prev)
    vim.keymap.set("n", "<leader>mm", vim.diagnostic.open_float, opts)

    vim.keymap.set("n", "gd", tele.lsp_definitions, opts)
    vim.keymap.set("n", "gi", tele.lsp_implementations, opts)
    vim.keymap.set("n", "gr", tele.lsp_references, opts)

    vim.keymap.set("n", "<leader>ml", function()
      tele.diagnostics({ severity_bound = 0 })
    end, opts)

    vim.keymap.set({ "n", "v" }, "<leader>mf", function()
      require("conform").format({ async = true, lsp_fallback = true })
    end, opts)
  end,
})
