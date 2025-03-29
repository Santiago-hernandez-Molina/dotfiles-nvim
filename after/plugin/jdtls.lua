local HOME = vim.fn.expand("$HOME")

local opts = {
  cmd = { HOME .. "/jdtls/init.sh" },
  root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),
  flags = {
    debounce_text_changes = 150,
    allow_incremental_sync = true,
  },
  settings = {
    java = {
      signatureHelp = { enabled = true },
      eclipse = {
        downloadSources = true,
      },
      maven = {
        downloadSources = true,
      },
      implementationsCodeLens = {
        enabled = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      references = {
        includeDecompiledSources = true,
      },
      inlayHints = {
        parameterNames = {
          enabled = "all", -- literals, all, none
        },
      },
      completion = {
        overwrite = true,
        favoriteStaticMembers = {
          "org.hamcrest.MatcherAssert.assertThat",
          "org.hamcrest.Matchers.*",
          "org.hamcrest.CoreMatchers.*",
          "org.junit.jupiter.api.Assertions.*",
          "java.util.Objects.requireNonNull",
          "java.util.Objects.requireNonNullElse",
          "org.mockito.Mockito.*",
        },
      },
      runtimes = {
        {
          name = "JavaSE-21",
          path = "/usr/lib/jvm/java-21-openjdk-amd64/",
        },
        {
          name = "JavaSE-17",
          path = "/usr/lib/jvm/java-17-openjdk-amd64/",
        },
        {
          name = "JavaSE-8",
          path = "/usr/lib/jvm/java-1.8.0-openjdk-amd64/",
        },
      },
      sources = {
        organizeImports = {
          starThreshold = 9999,
          staticStarThreshold = 9999,
        },
      },
      codeGeneration = {
        toString = {
          template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
        },
        useBlocks = true,
      },
    },
  },
}

-- Setup function for configuring the Java language server
local function setup()
  local pkg_status, jdtls = pcall(require, "jdtls")
  if not pkg_status then
    vim.notify("Unable to load nvim-jdtls. Please ensure it is installed.", vim.log.levels.ERROR)
    return {}
  end

  local on_attach = function(client, bufnr)
    jdtls.setup.add_commands() -- important to ensure you can update configs when build is updated
  end
  opts.on_attach = on_attach
  opts.capabilities = vim.lsp.protocol.make_client_capabilities()
  opts.capabilities.textDocument.definition.dynamicRegistration = nil
  return opts
end

function Start_jdt()
  require("jdtls").start_or_attach(setup())
end

local init = function()
  vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = {"java", "jproperties"},
    callback = function()
      Start_jdt()
    end,
    desc = "Start java language server",
  })
end

init()
