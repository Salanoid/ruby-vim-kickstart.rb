`sudo apt remove --auto-remove neovim`
`sudo apt purge --auto-remove neovim`
`rm -rf ~/.config/nvim`
puts "nvim from packages deleted"
`sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen`
`git clone https://github.com/neovim/neovim`
`cd neovim && git checkout stable`
`cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo`
`cd neovim && sudo make install`
`mkdir ~/.config/nvim`
`cd ~/.config/nvim; wget https://raw.githubusercontent.com/Salanoid/kickstart.nvim/master/init.lua`