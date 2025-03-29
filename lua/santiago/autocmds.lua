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

-- Disable spell checking for YAML files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "yaml",
  callback = function()
    vim.opt_local.spell = false
  end,
})


