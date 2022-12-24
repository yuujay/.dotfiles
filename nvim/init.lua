-- Install paq by using `git clone --depth=1 https://github.com/savq/paq-nvim.git "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/pack/paqs/start/paq-nvim`

-- vim core settings
require('general')

-- paq-nvim settings & plugins
-- require('install-plugins')
require('install-plugins-packer')

-- vim plugins settings
require('plugins')

vim.g.loaded_perl_provider = 0
