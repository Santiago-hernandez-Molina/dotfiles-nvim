local HOME = vim.fn.expand("$HOME")

local opts = {
  cmd = { HOME .. "/jdtls/init.sh" },
  root_dir = vim.fs.dirname(vim.fs.find({ 'gradlew', '.git', 'mvnw' }, { upward = true })[1]),
  flags = {
    debounce_text_changes = 150,
    allow_incremental_sync = true,
  },

  capabilities = {
    workspace = {
      didChangeWorkspaceFolders = {
        dynamicRegistration = true,
      },
    },
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

      configuration = {
        runtimes = {
          {
            name = "JavaSE-17",
            path = "/usr/lib/jvm/java-17-openjdk-amd64",
            default = true
          },
          {
            name = "JavaSE-1.8",
            path = "/usr/lib/jvm/java-1.8.0-openjdk-amd64",
          },
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


return {
  "mfussenegger/nvim-jdtls",
  ft = { "java" },
  config = function()
    opts.capabilities = vim.lsp.protocol.make_client_capabilities()
    opts.capabilities = require("blink.cmp").get_lsp_capabilities(opts.capabilities)
    opts.capabilities.textDocument.definition.dynamicRegistration = false
    require("jdtls").start_or_attach(opts)
  end
}
