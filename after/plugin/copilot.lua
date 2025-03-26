local prompts = {
	Explain = "Please explain how the following code works.",
	Review = "Please review the following code and provide suggestions for improvement.",
	Tests = "Please explain how the selected code works, then generate unit tests for it.",
	Refactor = "Please refactor the following code to improve its clarity and readability.",
	FixCode = "Please fix the following code to make it work as intended.",
	FixError = "Please explain the error in the following text and provide a solution.",
	BetterNamings = "Please provide better names for the following variables and functions.",
	Documentation = "Please provide documentation for the following code.",
	JsDocs = "Please provide JsDocs for the following code.",
	DocumentationForGithub = "Please provide documentation for the following code ready for GitHub using markdown.",
	Summarize = "Please summarize the following text.",
	Spelling = "Please correct any grammar and spelling errors in the following text.",
	Wording = "Please improve the grammar and wording of the following text.",
}

local copilotChatOPts = {
	enabled = true,
	prompts = prompts,
	show_folds = false,
	show_code_actions = true,
	window = {
		layout = "float",
		width = 0.8,
		height = 0.8,
		border = "solid",
		relative = "editor",
		references_display = "write",
	},
	chat_autocomplete = true,
  headless = false,
}
-- require("CopilotChat").setup(copilotChatOPts)
