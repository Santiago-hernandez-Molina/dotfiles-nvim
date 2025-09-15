--- Startup times for process: Primary (or UI client) ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.002  000.002: --- NVIM STARTING ---
000.203  000.201: event init
000.307  000.104: early init
000.366  000.059: locale set
000.419  000.053: init first window
000.918  000.498: inits 1
000.931  000.013: window checked
000.939  000.009: parsing arguments
001.565  000.053  000.053: require('vim.shared')
001.683  000.050  000.050: require('vim.inspect')
001.749  000.051  000.051: require('vim._options')
001.753  000.180  000.078: require('vim._editor')
001.756  000.277  000.044: require('vim._init_packages')
001.760  000.543: init lua interpreter
006.057  004.297: nvim_ui_attach
006.612  000.555: nvim_set_client_info
006.622  000.011: --- NVIM STARTED ---

--- Startup times for process: Embedded ---

times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.001  000.001: --- NVIM STARTING ---
000.283  000.281: event init
000.445  000.163: early init
000.583  000.138: locale set
000.743  000.160: init first window
001.365  000.622: inits 1
001.399  000.033: window checked
001.416  000.017: parsing arguments
002.352  000.053  000.053: require('vim.shared')
002.472  000.049  000.049: require('vim.inspect')
002.566  000.073  000.073: require('vim._options')
002.571  000.208  000.086: require('vim._editor')
002.574  000.303  000.041: require('vim._init_packages')
002.577  000.858: init lua interpreter
002.716  000.139: expanding arguments
002.754  000.038: inits 2
003.081  000.327: init highlight
003.084  000.003: waiting for UI
003.274  000.190: done waiting for UI
003.287  000.013: clear screen
003.578  000.020  000.020: require('vim.keymap')
004.986  000.280  000.280: sourcing nvim_exec2()
005.316  002.020  001.721: require('vim._defaults')
005.324  000.016: init default mappings & autocommands
005.820  000.079  000.079: sourcing /usr/share/nvim/runtime/ftplugin.vim
005.879  000.027  000.027: sourcing /usr/share/nvim/runtime/indent.vim
006.117  000.190  000.190: sourcing /usr/share/nvim/archlinux.lua
006.121  000.218  000.028: sourcing /etc/xdg/nvim/sysinit.vim
022.533  002.246  002.246: require('vim.filetype')
022.552  015.977  013.732: require('santiago.set')
022.728  000.172  000.172: require('santiago.autocmds')
023.623  000.631  000.631: require('lazy')
023.691  000.035  000.035: require('ffi')
023.783  000.044  000.044: require('vim.fs')
023.966  000.177  000.177: require('vim.uri')
023.996  000.298  000.077: require('vim.loader')
024.258  000.208  000.208: require('lazy.stats')
024.546  000.255  000.255: require('lazy.core.util')
024.845  000.293  000.293: require('lazy.core.config')
025.099  000.103  000.103: require('lazy.core.handler')
025.372  000.073  000.073: require('lazy.pkg')
025.382  000.180  000.107: require('lazy.core.meta')
025.390  000.284  000.104: require('lazy.core.plugin')
025.400  000.550  000.163: require('lazy.core.loader')
026.169  000.175  000.175: require('lazy.core.fragments')
030.357  000.133  000.133: require('lazy.core.handler.event')
030.371  000.272  000.140: require('lazy.core.handler.ft')
030.476  000.095  000.095: require('lazy.core.handler.cmd')
030.625  000.143  000.143: require('lazy.core.handler.keys')
031.215  000.019  000.019: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
031.388  000.025  000.025: sourcing /home/santiagohm/.local/share/nvim/lazy/typst.vim/ftdetect/typst.vim
031.394  000.074  000.049: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
031.406  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
031.451  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
031.477  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
031.663  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
031.705  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
033.098  000.159  000.159: sourcing nvim_exec2() called at /usr/share/nvim/runtime/filetype.lua:0
033.110  000.324  000.165: sourcing /usr/share/nvim/runtime/filetype.lua
033.116  000.386  000.062: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
034.075  000.151  000.151: require('vim.F')
035.002  001.811  001.660: require('vim.diagnostic')
036.106  000.569  000.569: require('snacks')
036.118  000.678  000.109: sourcing /home/santiagohm/.local/share/nvim/lazy/snacks.nvim/plugin/snacks.lua
036.129  000.734  000.056: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
036.189  000.012  000.012: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
036.210  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
037.034  000.034  000.034: sourcing /home/santiagohm/.local/share/nvim/lazy/omnisharp-extended-lsp.nvim/plugin/omnisharp_extended.vim
037.045  000.083  000.048: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
037.059  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
037.095  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
037.872  000.290  000.290: require('vim.lsp.log')
038.589  000.702  000.702: require('vim.lsp.protocol')
038.986  000.385  000.385: require('vim.lsp.util')
039.241  000.098  000.098: require('vim.lsp.sync')
039.249  000.253  000.155: require('vim.lsp._changetracking')
039.412  000.072  000.072: require('vim.lsp._transport')
039.436  000.182  000.110: require('vim.lsp.rpc')
039.667  002.411  000.598: require('vim.lsp')
040.634  000.956  000.956: require('lspconfig.util')
040.784  000.116  000.116: require('vim.version')
043.064  005.920  002.436: sourcing /home/santiagohm/.local/share/nvim/lazy/nvim-lspconfig/plugin/lspconfig.lua
043.089  005.965  000.045: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
043.123  000.013  000.013: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
043.160  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
043.492  000.138  000.138: require('vim.iter')
043.618  000.448  000.310: require('utils.server_configs')
044.051  000.075  000.075: require('omnisharp_extended/utils')
044.058  000.206  000.131: require('omnisharp_utils')
044.137  000.075  000.075: require('location_utils')
044.209  000.068  000.068: require('generic_command')
044.214  000.430  000.081: require('definition')
044.275  000.058  000.058: require('type_definition')
044.370  000.092  000.092: require('references')
044.464  000.090  000.090: require('implementation')
044.469  000.755  000.085: require('omnisharp_extended')
044.492  000.870  000.115: require('utils.server_configs_mason')
045.790  000.016  000.016: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
045.814  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
046.068  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
046.085  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
047.253  000.172  000.172: require('blink.compat')
047.268  001.007  000.835: require('blink-compat')
047.357  000.085  000.085: require('blink.compat.config')
047.469  000.087  000.087: require('blink.compat.event')
048.122  000.648  000.648: require('blink.compat.registry')
048.877  000.262  000.262: require('blink.cmp')
049.261  000.151  000.151: require('blink.cmp.lib.async')
049.590  000.141  000.141: require('blink.cmp.config.utils')
049.775  000.179  000.179: require('blink.cmp.config.keymap')
049.997  000.083  000.083: require('blink.cmp.config.completion.keyword')
050.128  000.125  000.125: require('blink.cmp.config.completion.trigger')
050.319  000.185  000.185: require('blink.cmp.config.completion.list')
050.481  000.156  000.156: require('blink.cmp.config.completion.accept')
050.731  000.246  000.246: require('blink.cmp.config.completion.menu')
050.864  000.128  000.128: require('blink.cmp.config.completion.documentation')
050.952  000.085  000.085: require('blink.cmp.config.completion.ghost_text')
050.958  001.177  000.169: require('blink.cmp.config.completion')
051.103  000.143  000.143: require('blink.cmp.config.fuzzy')
051.282  000.173  000.173: require('blink.cmp.config.sources')
051.470  000.182  000.182: require('blink.cmp.config.signature')
051.880  000.403  000.403: require('blink.cmp.config.snippets')
052.199  000.310  000.310: require('blink.cmp.config.appearance')
052.472  000.268  000.268: require('blink.cmp.config.modes.cmdline')
052.769  000.291  000.291: require('blink.cmp.config.modes.term')
052.778  003.508  000.242: require('blink.cmp.config')
053.223  000.439  000.439: require('blink.cmp.lib.utils')
053.690  000.402  000.402: require('blink.cmp.lib.event_emitter')
053.749  004.861  000.360: require('blink.cmp.sources.lib')
054.071  005.585  000.462: sourcing /home/santiagohm/.local/share/nvim/lazy/blink.cmp/plugin/blink-cmp.lua
054.091  005.653  000.068: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
054.127  000.013  000.013: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
054.177  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
054.562  000.313  000.313: require('blink-cmp')
057.071  000.166  000.166: require('blink.cmp.config.modes.types')
057.798  000.080  000.080: require('blink.cmp.fuzzy.download.system')
057.841  000.216  000.135: require('blink.cmp.fuzzy.download.files')
057.846  000.303  000.087: require('blink.cmp.fuzzy.download.git')
057.854  000.469  000.165: require('blink.cmp.fuzzy.download')
058.025  000.096  000.096: require('vim._system')
062.458  017.857  009.288: require('blink.cmp')
065.933  000.069  000.069: require('lspconfig.async')
065.949  000.181  000.112: require('lspconfig.configs')
065.973  000.396  000.215: require('lspconfig')
066.222  000.244  000.244: require('lspconfig.configs.angularls')
066.745  000.117  000.117: require('lspconfig.manager')
066.915  000.021  000.021: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
066.933  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
067.391  000.061  000.061: require('mason-core.path')
067.644  000.154  000.154: require('mason-core.functional')
067.765  000.045  000.045: require('mason-core.functional.data')
067.772  000.110  000.064: require('mason-core.functional.function')
067.851  000.050  000.050: require('mason-core.functional.relation')
067.910  000.050  000.050: require('mason-core.functional.logic')
067.926  000.527  000.163: require('mason-core.platform')
068.005  000.075  000.075: require('mason.settings')
068.009  000.960  000.296: require('mason')
068.584  000.115  000.115: require('mason-core.functional.list')
068.661  000.065  000.065: require('mason-core.functional.string')
068.700  000.377  000.197: require('mason.api.command')
068.781  000.070  000.070: require('mason-registry.sources')
069.293  000.016  000.016: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
069.314  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
069.377  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
069.390  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
070.248  000.190  000.190: require('hardtime.config')
070.492  000.231  000.231: require('hardtime.log')
070.569  000.579  000.158: require('hardtime.util')
070.597  001.048  000.469: require('hardtime')
071.200  000.066  000.066: sourcing /home/santiagohm/.local/share/nvim/lazy/nvim-web-devicons/plugin/nvim-web-devicons.vim
071.215  000.126  000.059: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
071.231  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
071.249  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
071.270  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
071.287  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
072.012  000.563  000.563: require('oil')
072.096  000.072  000.072: require('oil.ringbuf')
072.216  000.115  000.115: require('oil.config')
073.592  000.136  000.136: require('oil.log')
073.618  000.363  000.227: require('oil.fs')
073.892  000.055  000.055: require('oil.constants')
073.927  000.305  000.251: require('oil.util')
074.269  000.016  000.016: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
074.337  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
074.636  000.009  000.009: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
074.655  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
074.931  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
074.945  000.002  000.002: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
075.144  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
075.157  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
075.373  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
075.386  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
075.703  000.008  000.008: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
075.721  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
075.975  000.177  000.177: sourcing /home/santiagohm/.local/share/nvim/lazy/nvim-dap/plugin/dap.lua
075.983  000.220  000.044: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
075.995  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
076.023  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
078.063  000.286  000.286: require('dap.utils')
078.246  002.213  001.927: require('dap')
078.720  000.125  000.125: require('nio.tasks')
078.852  000.123  000.123: require('nio.control')
079.195  000.337  000.337: require('nio.uv')
079.313  000.111  000.111: require('nio.tests')
079.557  000.168  000.168: require('vim.ui')
079.571  000.253  000.086: require('nio.ui')
079.762  000.097  000.097: require('nio.streams')
079.766  000.192  000.095: require('nio.file')
081.045  000.500  000.500: require('nio.util')
081.157  001.135  000.635: require('nio.logger')
081.175  001.405  000.271: require('nio.lsp')
081.300  000.122  000.122: require('nio.process')
081.322  002.859  000.191: require('nio')
082.979  000.052  000.052: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
082.997  000.577  000.525: require('dapui.config.highlights')
083.112  000.106  000.106: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
083.465  001.624  000.942: require('dapui.config')
083.489  001.893  000.270: require('dapui.util')
083.974  000.480  000.480: require('dapui.windows.layout')
083.992  002.663  000.290: require('dapui.windows')
084.245  000.248  000.248: require('dapui.controls')
084.315  006.064  000.294: require('dapui')
084.869  000.148  000.148: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
085.541  000.329  000.329: require('dapui.client.types')
085.567  000.591  000.262: require('dapui.client')
085.824  000.251  000.251: require('dap.breakpoints')
086.053  000.193  000.193: require('dapui.client.lib')
086.408  000.188  000.188: require('dapui.render.canvas')
086.420  000.337  000.149: require('dapui.elements.breakpoints')
086.705  000.178  000.178: require('dapui.components.breakpoints')
086.849  000.085  000.085: require('dapui.elements.repl')
086.938  000.083  000.083: require('dapui.elements.scopes')
087.085  000.113  000.113: require('dapui.components.scopes')
087.220  000.129  000.129: require('dapui.components.variables')
087.364  000.104  000.104: require('dapui.elements.stacks')
087.639  000.097  000.097: require('dapui.components.frames')
087.646  000.239  000.142: require('dapui.components.threads')
087.784  000.092  000.092: require('dapui.elements.watches')
088.087  000.273  000.273: require('dapui.components.watches')
088.476  000.279  000.279: require('dapui.elements.hover')
088.948  000.342  000.342: require('dapui.components.hover')
089.284  000.291  000.291: require('dapui.elements.console')
089.943  000.542  000.542: require('nvim-dap-virtual-text')
090.084  000.033  000.033: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
090.123  000.030  000.030: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
091.324  000.489  000.489: require('dap-go-ts')
091.404  001.214  000.725: require('dap-go')
091.837  000.358  000.358: require('utils.dap_adapters')
092.161  000.312  000.312: require('utils.dap_configs')
092.959  000.072  000.072: sourcing /home/santiagohm/.local/share/nvim/lazy/nvim-colorizer.lua/plugin/colorizer.vim
092.972  000.142  000.069: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
092.991  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
093.011  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
093.762  000.112  000.112: require('colorizer/nvim')
094.024  000.252  000.252: require('colorizer/trie')
094.244  001.159  000.795: require('colorizer')
096.285  000.119  000.119: require('vim.health')
096.301  000.296  000.177: require('vim.deprecated.health')
097.640  000.472  000.472: require('gitsigns')
098.085  000.353  000.353: require('gitsigns.highlight')
098.217  000.104  000.104: require('gitsigns.debug.log')
098.403  000.180  000.180: require('gitsigns.config')
099.437  000.164  000.164: require('gitsigns.debounce')
099.466  002.373  001.100: sourcing /home/santiagohm/.local/share/nvim/lazy/gitsigns.nvim/plugin/gitsigns.lua
099.479  002.435  000.063: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
099.530  000.032  000.032: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
099.555  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
100.619  000.191  000.191: sourcing /home/santiagohm/.local/share/nvim/lazy/fzf-lua/plugin/fzf-lua.lua
100.641  000.269  000.078: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
100.668  000.010  000.010: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
100.722  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
102.270  000.547  000.547: require('fzf-lua.utils')
102.678  000.100  000.100: require('fzf-lua.lib.base64')
103.036  000.350  000.350: require('fzf-lua.lib.serpent')
103.050  000.757  000.306: require('fzf-lua.libuv')
103.078  001.531  000.227: require('fzf-lua.path')
103.848  000.376  000.376: require('fzf-lua.actions')
104.075  000.062  000.062: require('fzf-lua.class')
104.096  000.236  000.174: require('fzf-lua.devicons')
104.860  000.144  000.144: require('fzf-lua.previewer')
105.049  000.946  000.802: require('fzf-lua.defaults')
105.062  001.978  000.420: require('fzf-lua.config')
105.240  000.047  000.047: sourcing /home/santiagohm/.local/share/nvim/lazy/fzf-lua/autoload/fzf_lua.vim
105.247  000.103  000.055: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
106.162  000.421  000.421: require('fzf-lua.win')
106.455  000.069  000.069: require('fzf-lua.fzf')
106.599  000.138  000.138: require('fzf-lua.shell')
106.613  000.437  000.230: require('fzf-lua.core')
106.758  000.139  000.139: require('fzf-lua.make_entry')
106.799  006.066  001.458: require('fzf-lua')
107.581  000.159  000.159: require('fzf-lua.ctx')
107.689  000.097  000.097: require('fzf-lua.providers.ui_select')
108.054  000.072  000.072: sourcing /home/santiagohm/.local/share/nvim/lazy/conform.nvim/plugin/conform.lua
108.065  000.127  000.055: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
108.078  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
108.094  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
108.833  000.589  000.589: require('conform')
109.052  000.013  000.013: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
109.072  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
109.958  000.013  000.013: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
109.980  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
110.435  000.068  000.068: require('tokyonight.config')
110.443  000.423  000.355: require('tokyonight')
111.545  000.136  000.136: require('tokyonight.util')
111.557  000.224  000.088: require('tokyonight.theme')
111.815  000.119  000.119: require('tokyonight.colors')
111.949  000.065  000.065: require('tokyonight.colors.storm')
112.101  000.100  000.100: require('tokyonight.hsluv')
113.407  000.201  000.201: require('tokyonight.groups')
115.624  004.374  003.665: sourcing /home/santiagohm/.local/share/nvim/lazy/tokyonight.nvim/colors/tokyonight.lua
116.276  000.242  000.242: require('gitsigns.async')
116.735  000.056  000.056: sourcing nvim_exec2() called at ColorScheme Autocommands for "*":0
117.266  006.791  002.119: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
117.293  008.213  000.983: require('tokyonight.colors')
118.563  000.239  000.239: require('lualine_require')
119.106  001.241  001.003: require('lualine')
120.193  000.037  000.037: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
120.943  000.024  000.024: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
120.974  000.007  000.007: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
121.001  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
121.020  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
121.088  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
121.109  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
121.126  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
121.160  000.025  000.025: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.121  000.031  000.031: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.157  000.014  000.014: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.570  000.021  000.021: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.600  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.621  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.647  000.007  000.007: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.666  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.689  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.710  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.739  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.757  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.772  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.790  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.808  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.825  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.845  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.868  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.896  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.913  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.933  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.950  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.964  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
123.985  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
124.330  000.031  000.031: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
124.362  000.007  000.007: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
124.378  000.007  000.007: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
124.398  000.014  000.014: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
124.752  000.195  000.195: require('lualine.utils.mode')
125.904  000.030  000.030: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
125.987  000.007  000.007: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.011  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.032  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.055  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.073  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.097  000.007  000.007: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.121  000.007  000.007: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.144  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.162  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.176  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.203  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.221  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.237  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.263  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.278  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.297  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.314  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.332  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.449  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.495  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.634  000.008  000.008: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.650  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.668  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.691  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.709  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.725  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.742  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.797  000.007  000.007: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.816  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.833  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.853  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.870  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.888  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
126.908  000.005  000.005: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
127.672  000.038  000.038: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
127.750  000.019  000.019: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
127.786  000.028  000.028: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
127.803  000.009  000.009: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
127.819  000.009  000.009: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
129.767  000.223  000.223: sourcing /usr/share/nvim/runtime/plugin/editorconfig.lua
129.792  000.338  000.115: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
130.207  000.356  000.356: sourcing /usr/share/nvim/runtime/plugin/gzip.vim
130.225  000.411  000.055: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
130.564  000.254  000.254: sourcing /usr/share/nvim/runtime/plugin/man.lua
130.583  000.320  000.067: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
137.028  002.014  002.014: sourcing /usr/share/nvim/runtime/pack/dist/opt/matchit/plugin/matchit.vim
137.132  006.405  004.391: sourcing /usr/share/nvim/runtime/plugin/matchit.vim
137.160  006.488  000.083: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
137.721  000.300  000.300: sourcing /usr/share/nvim/runtime/plugin/matchparen.vim
137.739  000.393  000.093: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
137.906  000.023  000.023: sourcing /usr/share/nvim/runtime/plugin/netrwPlugin.vim
137.912  000.087  000.064: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
138.230  000.275  000.275: sourcing /usr/share/nvim/runtime/plugin/osc52.lua
138.245  000.310  000.035: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
139.095  000.743  000.743: sourcing /usr/share/nvim/runtime/plugin/rplugin.vim
139.113  000.805  000.062: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
139.321  000.116  000.116: sourcing /usr/share/nvim/runtime/plugin/shada.vim
139.328  000.163  000.048: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
139.408  000.027  000.027: sourcing /usr/share/nvim/runtime/plugin/spellfile.vim
139.415  000.070  000.042: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
139.651  000.192  000.192: sourcing /usr/share/nvim/runtime/plugin/tarPlugin.vim
139.659  000.225  000.032: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
139.914  000.174  000.174: sourcing /usr/share/nvim/runtime/plugin/tohtml.lua
139.923  000.245  000.071: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
140.007  000.038  000.038: sourcing /usr/share/nvim/runtime/plugin/tutor.vim
140.013  000.076  000.038: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
140.478  000.411  000.411: sourcing /usr/share/nvim/runtime/plugin/zipPlugin.vim
140.492  000.447  000.036: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
140.965  118.232  035.238: require('santiago.lazy')
142.287  000.676  000.676: require('vim.lsp.buf')
144.707  000.062  000.062: sourcing /home/santiagohm/.local/share/nvim/lazy/plenary.nvim/plugin/plenary.vim
144.723  000.131  000.069: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
144.739  000.006  000.006: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
144.762  000.004  000.004: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
145.121  000.231  000.231: sourcing /home/santiagohm/.local/share/nvim/lazy/undotree/plugin/undotree.lua
145.135  000.283  000.053: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
145.160  000.007  000.007: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
145.183  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
146.584  000.247  000.247: require('undotree.config')
146.828  000.228  000.228: require('undotree.undotree')
146.960  000.126  000.126: require('undotree.diff')
147.078  000.114  000.114: require('undotree.split_window')
147.251  000.115  000.115: require('undotree.action')
148.821  000.425  000.425: require('plenary.bit')
148.976  000.142  000.142: require('plenary.functional')
149.054  000.998  000.431: require('plenary.path')
149.084  001.150  000.153: require('plenary.strings')
149.093  001.457  000.306: require('plenary.window.border')
149.202  000.106  000.106: require('plenary.window')
149.303  000.097  000.097: require('plenary.popup.utils')
149.319  002.064  000.404: require('plenary.popup')
149.354  003.241  000.347: require('undotree.collector')
149.359  004.062  000.821: require('undotree')
149.401  006.991  002.495: require('undotree')
150.293  000.021  000.021: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
150.331  000.003  000.003: sourcing nvim_exec2() called at /home/santiagohm/.config/nvim/init.lua:0
152.622  000.251  000.251: require('harpoon.utils')
152.647  000.558  000.307: require('harpoon.logger')
153.578  000.203  000.203: require('harpoon.autocmd')
153.605  000.573  000.370: require('harpoon.buffer')
153.951  000.342  000.342: require('harpoon.extensions')
153.977  001.327  000.412: require('harpoon.ui')
154.374  000.393  000.393: require('harpoon.data')
154.829  000.448  000.448: require('harpoon.config')
155.470  000.635  000.635: require('harpoon.list')
160.307  009.233  005.871: require('harpoon')
160.385  010.923  001.666: require('harpoon')
160.724  019.749  001.158: require('santiago.remap')
160.730  154.566  000.435: require('santiago')
160.735  154.583  000.017: sourcing /home/santiagohm/.config/nvim/init.lua
160.756  000.525: sourcing vimrc file(s)
161.347  000.331  000.331: sourcing /usr/share/nvim/runtime/filetype.lua
161.792  000.111  000.111: sourcing /usr/share/nvim/runtime/syntax/synload.vim
161.911  000.471  000.360: sourcing /usr/share/nvim/runtime/syntax/syntax.vim
161.934  000.376: inits 3
165.107  003.173: reading ShaDa
165.640  000.532: opening buffers
165.996  000.357: BufEnter autocommands
166.007  000.010: editing files in windows
166.061  000.055: VimEnter autocommands
168.263  001.284  001.284: require('snacks.util')
168.613  002.483  001.200: require('snacks.input')
168.889  000.268  000.268: require('snacks.scope')
169.315  000.124  000.124: require('vim.termcap')
169.379  000.031  000.031: require('vim.text')
169.435  000.468: UIEnter autocommands
169.439  000.004: before starting main loop
169.879  000.439: first screen update
169.888  000.009: --- NVIM STARTED ---

