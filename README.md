# Description 
Build and run nvim from a docker container with pre defined configs and plugins

# Build image
```bash
docker build -tag nvim .
```

# [Packer](https://github.com/wbthomason/packer.nvim) (plugins manager)
Before using nvim, you should install dependencies with packer.nvim
```bash
docker run --user $(id -u):$(id -g) -it -v $(pwd):/app nvim 
/opt/nvim-linux-x86_64/bin/nvim --noplugin ~/.config/nvim/lua/config/packer.lua
```

Inside nvim packer.lua file, install dependecies with the following commands:
```bash
:source <Enter>
:PackerInstall <Enter>
```
