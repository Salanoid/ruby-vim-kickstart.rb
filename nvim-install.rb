`sudo apt remove --auto-remove neovim`
`sudo apt purge --auto-remove neovim`
`sudo rm -rf ~/.config/nvim`
puts "Old neovim from packages deleted"
`sudo apt-get install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl do xygen`
puts "Dependencies installed"
`git clone https://github.com/neovim/neovim`
`cd neovim && git checkout stable`
`sudo rm /usr/local/bin/nvim`
`sudo rm -r /usr/local/share/nvim`
unless `$CMAKE_INSTALL_PREFIX`.nil? || `$CMAKE_INSTALL_PREFIX`.strip.empty?
  `sudo rm $CMAKE_INSTALL_PREFIX/bin/nvim`
  `sudo rm -r $CMAKE_INSTALL_PREFIX/share/nvim/`
end
`sudo rm -r build/`
puts "Old neovim versions deleted"
`cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo`
`cd neovim && sudo make install`
puts "Neovim installed"
`mkdir ~/.config/nvim`
`cd ~/.config/nvim; wget https://raw.githubusercontent.com/Salanoid/kickstart.nvim/master/init.lua`
puts "Neovim configured"
`sudo rm -rf neovim`
puts "Succsesfully installed neovim."
