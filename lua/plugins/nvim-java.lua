local jdtls = {
	handlers = {
		["workspace/executeClientCommand"] = function(_, command, ctx)
			local cmd = command.command or ""

			if cmd == "editor.action.triggerParameterHints" then
				return {}
			end

			local default_handler = vim.lsp.handlers["workspace/executeClientCommand"]
			if default_handler then
				return default_handler(_, command, ctx)
			end
		end,
	},
	settings = {
		java = {
			configuration = {
				runtimes = {
					{
						name = "JavaSE-21",
						path = "~/.sdkman/candidates/java/21.0.10-amzn/",
						default = true,
					},
					{
						name = "JavaSE-1.8",
						path = "~/.sdkman/candidates/java/8.0.452-amzn",
					},
				},
			},
		},
	},
}

return {
	"nvim-java/nvim-java",
	ft = { "java", "xml", "jproperties" },
	config = function()
		require("java").setup({
			-- 	settings = {
			-- 		java = {
			-- 			configuration = {
			-- 				runtimes = {
			-- 					{
			-- 						name = "JavaSE-8",
			-- 						path = "~/.sdkman/candidates/java/8.0.472-amzn",
			-- 						default = true,
			-- 					},
			-- 				},
			-- 				{
			-- 					name = "JavaSE-21",
			-- 					path = "~/.sdkman/candidates/java/21.0.10-amzn",
			-- 					default = true,
			-- 				},
			-- 			},
			-- 		},
			-- 	},
			-- 	log = {
			-- 		use_console = true,
			-- 		use_file = true,
			-- 		level = "info",
			-- 		log_file = vim.fn.stdpath("state") .. "/nvim-java.log",
			-- 		max_lines = 1000,
			-- 		show_location = false,
			-- 	},
			checks = {
				nvim_version = true, -- Check Neovim version
				nvim_jdtls_conflict = true, -- Check for nvim-jdtls conflict
			},
			spring_boot_tools = {
				enable = true,
				version = "1.55.1",
			},
			jdk = {
				auto_install = false,
				version = "21",
			},
		})
		vim.lsp.enable("spring-boot")
		vim.lsp.enable("jdtls")
	end,
}
