local HOME = os.getenv("HOME")

local opts = {
	cmd = {
		HOME .. "/jdtls" .. "/init.sh",
	},
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
					name = "JavaSE-11",
					path = "/usr/lib/jvm/java-11-openjdk-amd64/",
				},
				{
					name = "JavaSE-17",
					path = "/usr/lib/jvm/jdk-17-oracle-x64/",
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

local function setup()
	local pkg_status, jdtls = pcall(require, "jdtls")
	if not pkg_status then
		vim.notify("unable to load nvim-jdtls", "error")
		return {}
	end

	local on_attach = function(client, bufnr)
		jdtls.setup.add_commands() -- important to ensure you can update configs when build is updated
	end

	opts.on_attach = on_attach
	opts.capabilities = vim.lsp.protocol.make_client_capabilities()

	return opts
end

function Start_jdt()
	require("jdtls").start_or_attach(setup())
end

local init = function()
	vim.api.nvim_create_autocmd({ "FileType" }, {
		pattern = "java",
		callback = function()
			Start_jdt()
		end,
		desc = "Start java language server",
	})
end

init()
