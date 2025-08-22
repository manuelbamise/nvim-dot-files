require("config.keymaps")
require("config.lazy")
require("config.options")
require("config.lsp")

require("plugins.setup.lualine")
require("plugins.setup.indentSetup")
require("lua.plugins.setup.autotagSetup")
require("lua.plugins.setup.donut")

vim.cmd([[colorscheme gruvbox]])
